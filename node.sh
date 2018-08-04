#!/bin/bash
########################################
# SETUP A SKELETON NODE.JS ENVIRONMENT #
########################################
### AFTER YOU GIT INIT A PROJECT:    ###
### 1. run script from project dir   ###
### e.g. 'bash /path/to/node.sh      ###
### 2. profit                        ###
########################################

mkdir test
mkdir src && cd src
touch server.js
printf 'const http = require("http");\nconst router = require("./router");\nconst server = http.createServer(router);\nconst port = process.env.PORT || 2608;\nconst hostname = process.env.HOSTNAME || 'localhost';\nserver.listen(port, () => {\nconsole.log(`Server is listening at: http://${hostname}:${port}`);\n});' > server.js
touch handler.js
printf '### TODO: ADD YOUR HANDLERS :)' > handler.js
touch router.js
printf 'const handler = require("./handler");\n\nconst router = (req, res) => {\n  ## your code here\n};\n\nmodule.exports = router;\n' > router.js
cd ..
mkdir public && cd public
touch index.html
mkdir css && touch css/style.css
mkdir js && touch js/dom.js && touch js/logic.js 
cd ..
touch .env
touch .travis.yml
printf 'language: node_js\nnode_js :\n - "node"' > .travis.yml
npm init -y
npm i -D tape tap-spec nyc nodemon eslint supertest codecov
npm i request mime-types dotenv
echo all good, much love \<3

