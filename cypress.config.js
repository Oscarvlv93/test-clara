const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild");



async function setupNodeEvents(on, config) {
  // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
  await preprocessor.addCucumberPreprocessorPlugin(on, config);
  on(
    "file:preprocessor",
    createBundler({
      plugins: [createEsbuildPlugin.default(config)]
    })
  );
  return config
}

module.exports = defineConfig({
  video: false,
  defaultCommandTimeout: 15000,
  reporter: 'mochawesome',
  env: {
    base_uri : "https://www.clara.com"
  },
  reporterOptions: {
    useInlineDiffs: true,
    embeddedScreenshots: true,
    reportDir: 'cypress/results',
    reportFilename: '[name].html',
    overwrite: true,
    html: true,
    json: true,
  },
  retries: {
    runMode: 0,
    openMode: 0,
  },
  e2e: {
    setupNodeEvents,
    specPattern: "**/*.feature",
    chromeWebSecurity: false
  }
})

