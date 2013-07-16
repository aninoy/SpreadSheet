#export PATH=/usr/local/bin:/usr/local/git/bin/:/usr/local/bin/node:/usr/local/bin/phantomjs:

git remote add stage_hub ~/Spreadsheet_hub.git
npm install -g grunt-cli
npm install
grunt build --verbose || exit 1
grunt bump-only || exit 1
git add --a || exit 1
git commit -m '' || exit 1
git push stage_hub develop || exit 1