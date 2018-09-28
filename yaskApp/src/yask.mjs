#!/usr/bin/env nodejs
/**
 * reading from default data-structures &
 * listed program entry-points:
 * 
 * checking for as is structure:
 * program checks outputs of runnning subsystems for the availability and scalability of the command.\
 * 
 * getting base install: get from firebaseStore: function wget(baseAccountName, baseAccountPW)
 */
import fsPromises from 'fs/promises';
import { http2 } from "http2";

/** adding default libraries:
 *  generate query based on files found in libraries folder: settingsObject
 *  - self-healing config generator: create config object - pull dependencies from firebase
 *  - or: import whole fileConfig from Gist;
 */
const systemSettings (
  { baseSettings
  , textEditor = vim: vim.baseSettings
  , libraries: null
  , programs: programs.baseSettings
  }) => {
    sysctl.settings = {
      baseSet: collateSettings( baseSettings ) => {
        return collatedSettings;
    }
  }

  return (
    { baseset: collatedSettings }
  );
}
 
/**
 * excluding . .. per default
 */
const getFilePath = fsPromises.readdir(
  { path
  , options = []
  }) => {
}

