mkdir test-branch
cd test-branch 
echo "# test-branch" > README.md
git init
git status
git add .   ou git add README.md
git status
git commit -m"First initial"
echo "projet git pour logwire" >> README.md
git commit -am"Ajout du projet"
git log --oneline
cat README.md
git branch

