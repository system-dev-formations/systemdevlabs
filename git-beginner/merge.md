join two or more development histories together

Incorporates changes from the named commits (since the time their histories diverged 
from the current branch) into the current branch. This command is used by git pull to incorporate changes 
from another repository and can be used by hand to merge changes from one branch into another.

Assume the following history exists and the current branch is "master":

![merge-init](./assets/merge-init.png)

Then "git merge topic" will replay the changes made on the topic branch since it diverged from master (i.e., E) until its current commit (C) on top of master, 
and record the result in a new commit along with the names of the two parent 
commits and a log message from the user describing the changes.

![merge-done](./assets/merge-done.png)

We are going to set up an complete git environment suitable for a professional usage


