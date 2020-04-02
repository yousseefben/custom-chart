git add *
git commit -m "some update"
git push
helm package .
git checkout gh-pages -f
helm repo index . --url https://yousseefben.github.io/custom-chart/ 
git add index*
git commit -m "some update"
git push 
git reset --hard
rm basic*
git checkout master