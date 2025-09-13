import { spawner } from "jarmuz/job-types";

spawner(function ({ baseDirectory, background }) {
  return background(`poet watch ${baseDirectory}`);
});
