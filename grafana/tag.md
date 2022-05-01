**Tags** are labels you can pin to a commit, but unlike branches, they will stay there.

Creating a tag is simple: you only need the git tag command, followed by a tag
name; we can create one in the tip commit of bug branch to give it a try; check out the
features branch:

Move to calc2 directory
```
cd  && cd calc2
```{{ execute T1 }}

Select the docs branch
```
git checkout docs
```{{ execute T1 }}

Apply a tag 
```
git tag v1.0-exp
```{{ execute T1 }}

```
git log --all --decorate --oneline --graph 
```{{ execute T1 }}

Do a new commit on this branch 
```
echo "another doc" >> docs.txt 
```{{ execute T1 }}

```
git add docs.txt
```{{ execute T1 }}

```
git commit -m"added a doc"
```{{ execute T1 }}


```
git log --all --decorate --oneline --graph
```{{ execute T1 }}

