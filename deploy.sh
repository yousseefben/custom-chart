git add .
git commit -m "some update"
git push
git show gh-pages:index.yaml > index.yaml  
helm package .
git checkout gh-pages -f
git pull
helm repo index . --url https://yousseefben.github.io/custom-chart/ 
git add index.yaml
git commit -m "some update"
git push 
git clean -dfx
git checkout master