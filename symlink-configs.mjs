#!/usr/bin/env zx

import "zx/globals";
import config_symlink_filesAndDirs from "./config_symlink_files-and-dirs.mjs";

const logTypes = {
  ERROR: {
    prefix: "ERROR",
    styles: ["red"],
  },
  WARN: {
    prefix: "WARN",
    styles: ["yellow"],
  },
  SUCCESS: {
    prefix: "SUCCESS",
    styles: ["green"],
  },
  PASSIVE: {
    prefix: "PASSIVE",
    styles: ["cyan"],
  },
  QUESTION: {
    prefix: "QUESTION",
    styles: [],
  },
};

function log(log) {
  const {
    text,
    type: { prefix, styles },
  } = log;
  let compositeStyle = chalk;
  styles.forEach((style) => {
    compositeStyle = compositeStyle[style];
  });
  console.log(compositeStyle(`${prefix}: ${text}`));

  // return empty strings for the sake of use with the zx `question` function
  return "";
}

async function symlinkConfigs() {
  const consented_config_symlink_filesAndDirs =
    await getConsented_config_symlink_filesAndDirs();
  for (const configFileOrDir in consented_config_symlink_filesAndDirs) {
    const symlinkFileOrDir = `${
      consented_config_symlink_filesAndDirs[configFileOrDir]
    }${configFileOrDir.slice(1)}`;
    const pathAlreadyExists =
      await conditionallyCreatePathAlreadyExistsLog(symlinkFileOrDir);
    if (pathAlreadyExists) {
      continue;
    }
    await conditionallyCreateDirectoryChainAndAssociatedLogs(symlinkFileOrDir);
    await createSymlink(configFileOrDir, symlinkFileOrDir);
  }
  log({
    text: "process finished. please check logs for possible errors and warnings",
    type: logTypes.SUCCESS,
  });
}

async function getConsented_config_symlink_filesAndDirs() {
  const consented_config_symlink_filesAndDirs = {};
  for (const configFileOrDir in config_symlink_filesAndDirs) {
    let configFileOrDirIsConsented = await question(
      log({
        text: `symlink ${configFileOrDir} ? (y/n)`,
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

async function conditionallyCreatePathAlreadyExistsLog(symlinkFileOrDir) {
  const pathAlreadyExists = await fs.pathExists(symlinkFileOrDir);
  if (pathAlreadyExists) {
    log({
      text: `${symlinkFileOrDir} already exists`,
      type: logTypes.ERROR,
    });
  }

  return pathAlreadyExists;
}

async function conditionallyCreateDirectoryChainAndAssociatedLogs(
  symlinkFileOrDir,
) {
  const symlinkFileOrDirSegments = symlinkFileOrDir.split("/");
  for (let i = -symlinkFileOrDirSegments.length - 1; i <= -1; i++) {
    const currentDirectory = symlinkFileOrDirSegments.slice(0, i).join("/");
    const currentDirectoryExists = await fs.pathExists(currentDirectory);
    if (currentDirectory && !currentDirectoryExists) {
      log({
        text: `creating ${currentDirectory}`,
        type: logTypes.WARN,
      });
      fs.ensureDir(currentDirectory);
      log({
        text: "done",
        type: logTypes.SUCCESS,
      });
    }
  }
}

async function createSymlink(configFileOrDir, symlinkFileOrDir) {
  log({ text: `linking ${configFileOrDir}`, type: logTypes.PASSIVE });
  await $`ln -s ${configFileOrDir} ${symlinkFileOrDir}`;
  log({
    text: "done",
    type: logTypes.SUCCESS,
  });
}

await symlinkConfigs();
