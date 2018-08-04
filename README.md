# bash-node-setup
1) initalise a git project 2) run `bash /path/to/node.sh` from within your project folder.  

This script will add the following skeleton structure to your project folder: 

+
| - public
| | - index.html
| | - css
| | |- style.css
| | - js
| | | - logic.js
| | | - dom.js
| - src 
| | - handler.js
| | - server.js
| | - router.js
| - .env
| - .travis.yml

It will also run `npm init -y` and install the *latest versions* of some npm packages: 

**Installs as dependencies:** request, mime-types, dotenv
**Installs as dev dependencies:** tape, tap-spec, nyc, nodemon, eslint, supertest, codecov
