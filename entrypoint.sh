#!/bin/sh

# Exit if any subcommand fails
set -e 

# Setup node modules
setup="NODE_ENV=development npm install --no-package-lock"

echo "## Running NPM tests"

# Setup chrome.
GEOMETRY="${SCREEN_WIDTH}x${SCREEN_HEIGHT}x${SCREEN_DEPTH}"
Xvfb :99 -ac -screen 0 $GEOMETRY &
export DISPLAY=:99

# Run tests
sh -c "NODE_ENV=development ${setup} && npm test"