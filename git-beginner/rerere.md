Although its name may look like a typo, rerere is an actual command
in Git. It is short for reuse recorded resolution. There are different
schools of thought on how to actually pronounce it; some say ree-reeree
and others rear-er or re-were.
With rerere, when you first encounter a conflict from one of the
merge-style operations, you resolve the conflict as appropriate, but
you tell Git to learn and remember how you resolved that conflict.
Afterward, if the same conflict occurs again, and rerere is enabled, Git
will resolve the conflict automatically in the same way you did.

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
cd ~ && mkdir test-rerere && cd test-rerere && git init
```{{ execute T1 }}

Copy calc.html file

```
cp ../calc2/calc.html . 
```{{ execute T1 }}

```
git add .
```{{ execute T1 }}

```
git commit -m "first init"
```{{ execute T1 }}

```
git checkout -b hme
```{{ execute T1 }}

change the title in calc.html file 

 ```
git add .
```{{ execute T1 }}

```
git commit -m "Change to hme"
```{{ execute T1 }}

 ```
git switch master
```{{ execute T1 }}

```
git merge hme
```{{ execute T1 }}

git makes a fast-forward, so there is no conflict at all

Check and get the commit id 
```
git log --oneline
```{{ execute T1 }}

 ```
git checkout  <SHA-1 first init>
```{{ copy }}

```
git checkout -b test 
```{{ execute T1 }}

change the title in calc.html file 

 ```
git add .
```{{ execute T1 }}

```
git commit -m "Change to test"
```{{ execute T1 }}

 ```
git switch master
```{{ execute T1 }}

```
git merge test
```{{ execute T1 }}

There is a conflict  
Now it's time to set up git rerere 

```
git merge --abort
```{{ execute T1 }}

```
git config rerere.enabled true
```{{ execute T1 }}


```
git merge test 
```{{ execute T1 }}

See the line "Recorded preimage for 'calc.html'
edit calc.html and modify the title 

```
git rerere diff
```{{ execute T1 }}

```
git add .
```{{ execute T1 }}

```
git commit -m "Solve merge of test conflict"
```{{ execute T1 }}

check 
```
git log --oneline
```{{ execute T1 }}

Remove the last commit

 ```
git reset --hard HEAD^
```{{ execute T1 }}

```
git log --oneline
```{{ execute T1 }}


 ```
git merge test
```{{ execute T1 }}


Resolved 'calc.html' using previous resolution.
but it is waiting for your validation 


