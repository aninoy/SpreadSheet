#export PATH=/usr/local/bin:/usr/local/git/bin/:/usr/local/bin/node:/usr/local/bin/phantomjs:
 
npm install -g grunt-cli
npm install
grunt build --verbose || exit 1
grunt bump-only || exit 1