# docker-node-slim-with-chromium

A docker image from Slim NodeJS with Chromium pre-installed to avoid downloading a new version from Puppeteer every time.

It is a Debian based image, which makes it easy to be customized.

## Puppeteer integration

These Environment variables are exposed:

- [x] `PUPPETEER_SKIP_CHROMIUM_DOWNLOAD` to make puppeteer skip downloading Chromium since it is already installed in the system.
- [x] `PUPPETEER_EXECUTABLE_PATH` The path to the Chromium executable file: `/usr/bin/chromium`
