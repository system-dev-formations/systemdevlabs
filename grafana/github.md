How to manage a project in github   

In your gitub account, create a new repository named **git-airbus**   
Select Public, check README, .gitignore  and License   

Go to a github account and select Settings->Developer setting->Personal access tokens
Hit generate tokens, key your password  
Enter in the note textbox  katacoda  
tick the check box repo  
save in your notepad locally this token  
## Go to your home directory
```shell
cd ~
```{{ execute T1 }}

## Clone your Github repo to your local environment  
Change the current url below   
```
git clone https://github.com/<github_account>/git-airbus.git
```{{ copy }} 
and 
```shell
cd git-airbus
```{{ execute T1 }}

## check how the local repo is connected to the remote repo
```shell
git remote -v
```{{ execute T1 }}

"origin" is a local alias name for the remote repository that a project was originally cloned from. 
Now your local repo is connected to the remote one.

## Convert an existing git repo to github
In your gitub account, create a new repository named **git-test**   
Select Public, don't check README, .gitignore  and License 
Get the URL of this repo by typing on the green button
```shell
cd ~ && cd project 
```{{ execute T1 }}

Change the remote url accordlingly
```shell
git remote add origin https://github.com/<github_account>/git-test.git
```{{ copy }}

Check 
```
git status
```{{ execute T1 }}


Now we are going to registre our repo to the remote github repo  
Enter your github account 
Copy/Paste your token as a password previously saved in notepad  
```shell
git push --set-upstream origin master
```{{ execute T1 }}

Register a sensitive file
```
echo "1234567" >> password.txt
```{{ execute T1 }}

Added to staging area and commit 
```
git add password.txt && git commit -m"added sensitive file"
```{{ execute T1 }}

Push to remote repo 
```shell
git push --set-upstream origin master
```{{ execute T1 }}


