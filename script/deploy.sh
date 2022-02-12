#!/bin/bash

# Install with npm CI
/opt/plesk/node/14/bin/npm ci --scripts-prepend-node-path

# Build project with npm
NODE_ENV=production /opt/plesk/node/14/bin/npm run build --scripts-prepend-node-path

# Restart node app
touch ./tmp/restart.txt

#!/bin/bash

# Install with npm CI
# /opt/plesk/node/14/bin/npm install --scripts-prepend-node-path
# /opt/plesk/node/14/bin/npm ci --scripts-prepend-node-path

# Build project with npm
# NODE_ENV=production /opt/plesk/node/14/bin/npm run build --scripts-prepend-node-path