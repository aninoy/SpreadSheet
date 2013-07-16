#export PATH=/usr/local/bin:/usr/local/git/bin/:/usr/local/bin/node:/usr/local/bin/phantomjs:

git remote add stage_hub /home/aninoy/Spreadsheet_hub.git
git config user.name "Jenkins on Racer5"
git config user.email "aninoy@gmail.com"
git checkout develop || exit 1
npm install -g grunt-cli
npm install
grunt build --verbose || exit 1
grunt bump-only || exit 1
git add --a || exit 1
git commit -m 'Version bumped by Jenkins' || exit 1
git push stage_hub develop || exit 1