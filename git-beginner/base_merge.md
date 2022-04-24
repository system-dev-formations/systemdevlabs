To get started, you’ll need to clone the magicSquareJS repository that’s used in this
section of the book.
You can do this by way of the git clone command:

```
git clone --branch main https://github.com/raywenderlich/magicSquareJS.git
```{{ execute T1 }}

change directory
```
cd magicSquareJS
```{{ execute T1 }}

check our repo
```
git branch 
```{{ execute T1 }}

```
git branch -av
```{{ execute T1 }}

one user is doing his work in  zIntegration branch  
a web designer is doing her work in yUI branch 
So we are going to merge yUi to zIntegration 

```
git checkout yUI
```{{ execute T1 }}

```
git checkout zIntegration
```{{ execute T1 }}

```
git merge yUI
```{{ execute T1 }}

open index.html file 

Ok , more info on conflits

```
git reset --hard  HEAD
```{{ execute T1 }}

add more verbosity about a conflict

```
git config merge.conflictstyle diff3
```{{ execute T1 }}

```
git merge yUI
```{{ execute T1 }}

Remember that Git doesn’t always think about files, per se. In this case, Git is talking
about both branches that are modified. To see this in a bit more detail, you can add
the -s (--short) and -b (--branch) options to git status to get a consolidated
view of the situation:

```
git status -sb
```{{ execute T1 }}

open index.html
There’s a new section in there: ||||||| 69670e7. This shows you the hash of the
common ancestor of both changes; that is, what the code looked
like before each created their own branch.


```
git add index.html
```{{ execute T1 }}


```
git status -sb
```{{ execute T1 }}

```
git commit
```{{ execute T1 }}

```
git log --all --decorator --oneline --graph 
```{{ execute T1 }}




