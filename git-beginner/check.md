We are going to check our environment

## Check whether git is installed
Hit the following command for getting the git version 
```
git --version 
```{{execute T1}}
## Create a project 
```
mkdir project && cd project
```{{execute T1}}

## Create a file and insert a text
```
echo " it's a text" >> test.txt
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

## Give some info regarding your identity 
Set your email and user name
```
git config --global user.email "dockerlite@gmail.com"
```{{ copy }}
and
```
git config --global user.name "Herve"
```{{ copy }}




