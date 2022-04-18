We are going to simulate 2 different users on the same project

You have already cloned calc2 project so we are doing again to another directory
```
cd ~ && git clone https://github.com/<your_github_account>/calc2.git calc_other
```{{ copy }}

run the following into the respective directory for each clone repository
```
cd ~/calc2 && git remote add upstream https://github.com/<your_github_account>/calc2.git
```{{ copy }}

and
```
cd ~/calc_other && git remote add upstream https://github.com/<your_github_account>/calc2.git
```{{ copy }}

Check, run the command in each repo directory
```
cd ~/calc2 && git remote -v
```{{ execute T1 }}




