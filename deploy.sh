git add .
git commit -m "some update"
git push
git checkout -b tmp
git show gh-pages:index.yaml > index.yaml  
helm package .
helm repo index . --url https://yousseefben.github.io/custom-chart/ 
# git checkout gh-pages -f
# git pull
git add index.yaml
git clean -dfx
git commit -m "some update"
git push origin master:gh-pages -f  

git checkout master