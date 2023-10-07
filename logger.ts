export const logTypes = {
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
} as const;

type LogType = (typeof logTypes)[keyof typeof logTypes];

type Log = { text: string; type: LogType };

export function log(log: Log) {
  const {
    text,
    type: { prefix, styles },
  } = log;
  let compositeStyle = chalk;
  styles.forEach((style: string) => {
    compositeStyle = compositeStyle[style];
  });
  console.log(compositeStyle(`${prefix}: ${text}`));

  // return empty strings for the sake of use with the zx `question` function
  return "";
}

export function done() {
  log({
    text: "done",
    type: logTypes.SUCCESS,
  });
}

export function runWithLogs(fn: () => Promise<any>) {
  fn()
    .then(() => {
      log({
        text: "process finished. please check logs for possible errors and warnings",
        type: logTypes.SUCCESS,
      });
    })
    .catch((e) => {
      log({
        text: e,
        type: logTypes.ERROR,
      });
      log({
        text: "process could not finish. please check logs for possible errors and warnings",
        type: logTypes.ERROR,
      });
    });
}
