We are going to check our environment

## Check whether git is installed
Hit the following command for getting the git version 
```
git --version 
```{{execute T1}}
## Find  the latest version of git
```
cd git
```{{ execute T1 }}

## Display all git version available 
```
git tag --sort=-creatordate --format='%(creatordate:short)%09%(refname:strip=2)'
```{{ execute T1 }}
** Type q **  for getting out of this command 
This command is quite complicated, you can get the date of the latest version and the delta between 
your current version available on your system , this is a common job that your sysadmin should do.

## Create a project 
```
cd ~ && mkdir project && cd project
```{{execute T1}}

## Create a file and insert a text
```
echo " it's a text" >> test.py
```{{execute T1}}

## Check the git status 
```
git status
```{{execute T1}}

This directory is not under git control

## Git init
The way to move a directory to be tracked by git is to type git init  
```
git init
```{{execute T1}}

## Check what is going on 
```
git status
```{{execute T1}}

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


