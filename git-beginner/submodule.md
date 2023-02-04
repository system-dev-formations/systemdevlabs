Git submodules allow you to keep a git repository as a subdirectory of another git repository. 
There are simply a reference to another repository at a particular snapshot in time. 
That enables a Git repository to incorporate and track version history of external code.

Sometimes submodules are the right choice. 
This is particularly the case when the codebase is massive and you don't necessarily want to get everything every time, 
especially in sprawling projects. We then resort to submodules so as not to require the recovery of entire sections of
the code for everyone. Various massive open-source projects use it precisely for this reason (or because of a strong 
modularization which is not natively supported by the ecosystem of the main language): 
see for example Chromium, which makes heavy use of submodules .

Add the sub_ui repository as a submodule to the super_calc
project by running this command:
```shell
git clone  https://github.com/<your github account>/super_calc.git 
```{{ copy }}

```shell
cd ~ && cd super_calc
```{{ execute T1 }}

Install sub_ui project as a submodule of super_calc

```shell
git submodule add https://github.com/<your github account>/sub_ui.git sub_ui
```{{ copy }}

Check the directory 
```shell
ll
```{{ execute T1 }}

```shell
git status 
```{{ execute T1 }}

```shell
git show :.gitmodules
```{{ execute T1 }}

Now you need to commit and push the staged submodule mapping
and data to your local and remote repositories. Run the following
commands:

```shell
git commit -m "Add submodules sub_ui"
```{{ execute T1 }}

```shell
git push
```{{ execute T1 }}

Check 
```shell
git log --oneline
```{{ execute T1 }}


Now you can clone a new copy of this project with the submodule.
Change to a higher-level directory and clone a copy of the project
down as super_calc2.








```
cd ~ && git clone https://github.com/<your github account>/super_calc.git super_calc2
```{{ copy }}

Change into the super_calc2 directory and look at what’s in the
sub_ui subdirectory. Run the submodule status command to see
what the status of the submodule is.

```
cd ~/super_calc2 && git submodule status 
```{{ execute T1 }}

Notice the hyphen (-) in front of the SHA1 value. This indicates
that the submodule has not been initialized yet relative to the super
project. You could have done this at clone time using the --
recursive option. However, because you didn’t, you need to use the
update --init subcommand for the submodule operation, as
follows:

```
git submodule update --init
```{{ execute T1 }}

Git clones the sub_ui code into the submodule. Look at the sub_ui
subdirectory to see the contents, and then run the submodule
status command again.

```
git submodule status
```{{ execute T1 }}

This time, you see a space at the beginning (instead of the minus
sign) to indicate the submodule has been initialized.


Delete the relevant directory  
```
cd ~ && rm -Rf super_calc
```{{ execute T1 }}

Using one command you can initialize your main repo and the submodule 
```
git clone --recurse-submodules https://github.com/<your_github_account>/super_calc.git 
```{{ copy }}

you need to make a simple change in calc.html 

```
cd sub_ui && vim calc.html 
```{{ execute T1 }}

Commit your changes into the submodule.
```
git commit -am "Update title"
```{{ execute T1 }}

Do a quick log command and note the SHA1 value associated with
the commit you just made.

```
git log --oneline 
```{{ execute T1 }}


Change back to the super_calc2 project (up one level) and run a
submodule status command.

```
cd .. && git submodule status 
```{{ execute T1 }}

Note that the submodule SHA1 reference now points to your latest
commit in the submodule, but there is a plus sign (+) at the front of
the reference. This indicates that there are changes in the
submodule that have not yet been committed back into the super
project. Run a git status command to get another view of what’s
changed for the super project.

```
git status
```{{ execute T1 }}

The status command gives you much more information about
what’s changed. It tells you that the sub_ui module has been
changed and is not updated or staged for commit. To complete the
update, you need to stage and commit the sub_ui data. You can
then push it out to your GitHub remote repository. To complete the
process, execute the commands below.

```
git commit -am "Update for submodule sub_ui"
```{{ execute T1 }}

```
git  push
```{{ execute T1 }}


Now that you’ve updated the submodule and the supermodule,
everything is in sync. Run a git status and a git submodule status
command to verify this.

```
git status
```{{ execute T1 }}

```
git  submodule status
```{{ execute T1 }}

With these tools, submodules can be a fairly simple and effective method of developing on related
but separate projects simultaneously.


