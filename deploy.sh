git add .
git commit -m "some update"
git push
git checkout -b tmp
git show gh-pages:index.yaml > index.yaml  
helm package .
helm repo index . --url https://yousseefben.github.io/custom-chart/ 
git add .
git commit -m "some update"
git checkout gh-pages -f
git pull
rm index.yaml
git show tmp:index.yaml > index.yaml
git add index.yaml
git commit -m "some update"
git push -f  
git clean -dfx
git checkout master