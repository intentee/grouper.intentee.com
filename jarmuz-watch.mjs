#!/usr/bin/env node

import { jarmuz } from "jarmuz";

jarmuz({
  once: false,
  pipeline: ["poet-watch", "tcm", "tsc", "esbuild-development"],
  watch: ["resources", "src"],
}).decide(function ({ initial, matches, schedule }) {
  switch (true) {
    case initial:
      schedule("poet-watch");
      return;
    case matches("resources/**/*.{mjs,ts,tsx}"):
      schedule("tsc");
      break;
    case matches("resources/ts/**/*.css"):
      schedule("tcm");
    case matches("resources/**/*.{avif,css,gif,jpg,jpeg,svg,webp}"):
      schedule("esbuild-development");
      return;
  }
});
