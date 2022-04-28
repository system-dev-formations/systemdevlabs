Perhaps you know the stash which is used to put work aside? **Git worktree** lets you do the same thing. 
The difference is that worktrees allow you to leave your workspace as it is and create another one elsewhere on your disk. 
This other workspace will have the particularity of pointing to the same local repository as the initial repository 
but it will point to another branch

###Complex staging to preserve

If we have already made good progress on the staging of our work, it would be frustrating to see the 
stash pop eventually refuse to restore it, on the pretext that we will have modified some of the files concerned
by our stage in the meantime.

We then use git worktree to create another project directory pointing to the same local repository as our current project.
We can work calmly on another branch then resume, in our initial directory, our commit in preparation.

Fork the following repos  
https://github.com/crunchy-devops/super_calc.git    
https://github.com/crunchy-devops/sub_ui.git  
https://github.com/crunchy-devops/sub_docs.git  

clone the super_calc repo 
```shell
git clone https://github.com/crunchy-devops/super_calc.git
```{{ execute T1 }}

```shell
cd super_calc
```{{ execute T1 }}

you want to work on both the master branch and the
features branch at the same time. You can work on the master
branch in this directory, but you need to create a separate working
tree (worktree) for working on the features branch. You can do that
with the worktree add command, passing the -b to create a new
local branch off of the remote tracking branch.

```shell
git worktree add -b features ../super_calc_features origin/features
```{{ execute T1 }}

```shell
cd ~ && cd super_calc_features
```{{ execute T1 }}

Change calc.html 
```shell
vim calc.html
```{{ execute T1 }}

Add and Commit in one command with switch **-am** 
```shell
git commit -am "updating title"
```{{ execute T1 }}

Back to the main repo super_calc
```shell
cd ~ && cd super_calc 
```{{ execute T1 }}

Look at what branches you have there 
```shell
git branch
```{{ execute T1 }}

Note that you have the features branch you created for the other
worktree. Do a log on that branch; you can see your new commit
just as if you had done it in this worktree.

```shell
git log --oneline features
```{{ execute T1 }}

take a look at what worktrees are currently there
```shell
git worktree list
```{{ execute T1 }}

![worktrees](./assets/worktree_branch.png)
The sign + in a front of the branch name means a worktree branch
there are 2 branches available in a same time master and features 
You current branch is master. If you execute a checkout on features 
git says features is already checked out 
So the behavior of git is a little bit different than a normal situation 

do a git merge, resolve the conflict

```shell
git push
```{{ execute T1 }}

## Remove your worktree

```shell
cd ~ && rm -Rf super_calc_features
```{{ execute T1 }}

```shell
git worktree prune
```{{ execute T1 }}



