import "zx/globals";
import config_symlink_filesAndDirs from "./config_symlink_files-and-dirs";
import { logTypes, log, done, runWithLogs } from "./logger";

function generateformattedPathSegmentsArray(path: string) {
  return (
    path
      // keep first empty string to preserve leading forward slash in path
      .split("/")
      .filter((symlinkFileOrDirSegment, index) =>
        index === 0 ? true : symlinkFileOrDirSegment !== "",
      )
  );
}

async function symlinkConfigs() {
  const consented_config_symlink_filesAndDirs =
    await getConsented_config_symlink_filesAndDirs();
  for (const configFileOrDir in consented_config_symlink_filesAndDirs) {
    const symlinkFileOrDir = generateformattedPathSegmentsArray(
      `${
        consented_config_symlink_filesAndDirs[configFileOrDir]
      }${configFileOrDir.slice(1)}`,
    ).join("/");
    const pathAlreadyExists = await checkIfPathAlreadyExists(symlinkFileOrDir);
    if (pathAlreadyExists) {
      continue;
    }
    const trimmedSymlinkFileOrDir =
      await createDirectoryChainIfNotFullyPresent(symlinkFileOrDir);
    await createSymlink(configFileOrDir, trimmedSymlinkFileOrDir);
  }
}

async function getConsented_config_symlink_filesAndDirs() {
  const consented_config_symlink_filesAndDirs: Record<string, string> = {};
  for (const configFileOrDir in config_symlink_filesAndDirs) {
    let configFileOrDirIsConsented = await question(
      log({
        text: `symlink '${configFileOrDir}' ? (y/n)`,
        type: logTypes.QUESTION,
      }),
    );
    while (
      configFileOrDirIsConsented !== "y" &&
      configFileOrDirIsConsented !== "n"
    ) {
      configFileOrDirIsConsented = await question(
        log({
          text: `invalid answer. please enter either y or n`,
          type: logTypes.QUESTION,
        }),
      );
    }
    if (configFileOrDirIsConsented === "y") {
      consented_config_symlink_filesAndDirs[configFileOrDir] =
        config_symlink_filesAndDirs[configFileOrDir];
    }
  }

  return consented_config_symlink_filesAndDirs;
}

async function checkIfPathAlreadyExists(symlinkFileOrDir: string) {
  const pathAlreadyExists = await fs.pathExists(symlinkFileOrDir);
  if (pathAlreadyExists) {
    log({
      text: `'${symlinkFileOrDir}' already exists`,
      type: logTypes.ERROR,
    });
  }

  return pathAlreadyExists;
}

async function createDirectoryChainIfNotFullyPresent(symlinkFileOrDir: string) {
  const symlinkFileOrDirSegments =
    generateformattedPathSegmentsArray(symlinkFileOrDir);
  const trimmedSymlinkFileOrDir = symlinkFileOrDirSegments.join("/");
  for (let i = -symlinkFileOrDirSegments.length - 1; i <= -1; i++) {
    const currentDirectory = symlinkFileOrDirSegments.slice(0, i).join("/");
    const currentDirectoryExists = await fs.pathExists(currentDirectory);
    if (currentDirectory && !currentDirectoryExists) {
      log({
        text: `creating '${currentDirectory}'`,
        type: logTypes.WARN,
      });
      await fs.ensureDir(currentDirectory);
      done();
    }
  }

  return trimmedSymlinkFileOrDir;
}

async function createSymlink(
  configFileOrDir: string,
  symlinkFileOrDir: string,
) {
  log({ text: `linking '${configFileOrDir}'`, type: logTypes.PASSIVE });
  const cwd = await $`pwd`.quiet();
  await $`sudo ln -s ${cwd}${configFileOrDir.slice(
    1,
  )} ${symlinkFileOrDir}`.quiet();
  done();
}

runWithLogs(symlinkConfigs);
