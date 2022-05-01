We are going to simulate 2 different users on the same project

You have already cloned calc2 project so we are doing again to another directory
```
cd ~ && git clone https://github.com/<your_github_account>/calc2.git calc_other
```{{ copy }}

Assume that you want to be able to pull in any updates that may be made in
the original GitHub repository that these repositories are forked
from. In this case, you need to add another remote that you can run
pull or fetch operations against if you want to.
run the following into the respective directory for each cloned repository

```
cd ~/calc2 && git remote add upstream https://github.com/system-dev-formations/calc2.git
```{{ copy }}

and
```
cd ~/calc_other && git remote add upstream https://github.com/system-dev-formations/calc2.git
```{{ copy }}

Check, run the command in each repo directory
```
cd ~/calc2 && git remote -v
```{{ execute T1 }}




