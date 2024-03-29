What’s the difference between rm and git rm? Not much: rm foo.txt,
will remove the file, and git status will show deleted: foo.txt.
But git rm foo.txt will remove the file and add it to the staging area.

```
echo "hme "  >> name.txt
```{{execute T1}}

```
git add name.txt
```{{execute T1}}

```
git rm name.txt
```{{execute T1}}


Register a commit related to the previous action 
```
git commit -m "Deleted file from git repository"
```{{ execute T1 }}


wrong files were added, but they were not yet committed, 
then a simple reset will remove the files from the staging area, but doesn’t actually delete the files:

```
git reset HEAD~1
```{{ execute T1 }}

make a commit and notice a stray directory or a file (for example .DS_Store)
 that should have been ignored in the first place, 
i.e.: make git forget already committed files.

```
git rm --cached name.txt
```{{ execute T1 }}

if it's a directory 
```
git rm -r --cached test/
```{{ copy }}


### Delete a file from the entire Git history 
fork this repo ansible-course to example-git-delete   
git clone the new repo 
```
git filter-branch --tree-filter 'rm -f inventory' HEAD
```{{ execute T1 }}

Push the new commits generated by filter-branch
```
git push origin --force --all
```{{ execute T1 }}