git add *
git commit -m "some update"
git push
helm package .
git checkout gh-pages
git add index*
git commit -m "some update"
git push 
git reset --hard
git checkout master