git add .
git commit -m "some update"
git push
git show gh-pages:index.yaml > index.yaml  
helm package .
helm repo index . --url https://yousseefben.github.io/custom-chart/ 
git checkout gh-pages -f
git pull
git add index.yaml
git commit -m "some update"
git push -f  
git clean -dfx
git checkout master