git add .
git commit -m "some update"
git push
helm package .
git checkout gh-pages
helm repo index . --url https://yousseefben.github.io/custom-chart/ 
git add *
git commit -m "some update"
git push -f  
git clean -dfx
git checkout master