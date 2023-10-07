import "zx/globals";
import { logTypes, log, done, runWithLogs } from "./logger";

async function installAptPackages() {
  let aptPackages: string | string[] = await fs.readFile(
    "./apt-packages-concise.txt",
    {
      encoding: "utf8",
    },
  );
  aptPackages = aptPackages
    .split("\n")
    .filter((aptPackage) => aptPackage !== "");
  const consentedAptPackages = await getConsentedAptPackages(aptPackages);
  log({
    text: "installing selected packages",
    type: logTypes.PASSIVE,
  });
  await $`sudo apt install ${consentedAptPackages}`;
  done();
}

async function getConsentedAptPackages(aptPackages: string[]) {
  const consentedAptPackages: string[] = [];
  for (const aptPackage of aptPackages) {
    let aptPackageIsConsented = await question(
      log({
        text: `install '${aptPackage}' ? (y/n)`,
        type: logTypes.QUESTION,
      }),
    );
    while (aptPackageIsConsented !== "y" && aptPackageIsConsented !== "n") {
      aptPackageIsConsented = await question(
        log({
          text: `invalid answer. please enter either y or n`,
          type: logTypes.QUESTION,
        }),
      );
    }
    if (aptPackageIsConsented === "y") {
      consentedAptPackages.push(aptPackage);
      console.log(aptPackage);
      console.log(consentedAptPackages);
    }
  }

  return consentedAptPackages;
}

runWithLogs(installAptPackages);
