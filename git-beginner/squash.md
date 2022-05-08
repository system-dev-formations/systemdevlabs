The basic idea is to take several continuous commits and overwrite them into one.
The main intention is to condense many commits into a few relevant commits. So, doing this makes the git history concise and clear.
Another way to look at it is that we make multiple task-related commits. After a while, when we reach a good state, the many commit messages clutter the git history.
At this point, we may wish to combine the various commits into one so that the git history is clear and best reflects the task performed.

## Give some info to git regarding your identity
Set your email and user name
```
git config --global user.email "dockerlite@gmail.com"
```{{ copy }}
Right click on the console and paste  
Change the email address   
```
git config --global user.name "Herve"
```{{ copy }}
Right-click on the console and paste   
Put your name   

```
cd ~ && mkdir git-squash && cd git-squash && git init
```{{ execute T1 }}

commit A
```
echo first > first.txt
```{{ execute T1 }}

```
git add . 
```{{ execute T1 }}

```
git commit -m "A"
```{{ execute T1 }}


commit B
```
echo second > second.txt
```{{ execute T1 }}

```
git add .
```{{ execute T1 }}

```
git commit -m "B"
```{{ execute T1 }}

commit C
```
echo third > third.txt
```{{ execute T1 }}

```
git add .
```{{ execute T1 }}

```
git commit -m "C"
```{{ execute T1 }}

commit D
```
echo fourth > fourth.txt
```{{ execute T1 }}

```
git add .
```{{ execute T1 }}

```
git commit -m "D"
```{{ execute T1 }}

commit E
```
echo fifth > fifth.txt
```{{ execute T1 }}

```
git add .
```{{ execute T1 }}

```
git commit -m "E"
```{{ execute T1 }}

Check and get the commit id 
```
git log --oneline
```{{ execute T1 }}

Merge the E, D, C commits into B commit 
So we are going to an interactive rebase
 
```
git rebase -i HEAD~4
```{{ execute T1 }}

BEWARE: the list of commits is presented in reverse order in the editor
replace E,D,C with f character
and say B as r character and change the commit message 

Check and get the commit id 
```
git log --oneline
```{{ execute T1 }}




