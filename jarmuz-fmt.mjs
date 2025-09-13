#!/usr/bin/env node

import { jarmuz } from "jarmuz";

jarmuz({
  once: true,
  pipeline: ["prettier"],
  watch: ["jarmuz", "resources", "*.mjs"],
}).decide(function ({ schedule }) {
  schedule("prettier");
});
