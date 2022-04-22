Another useful tool that Git provides is bisect. The bisect command
provides a mechanism for quickly locating where a problem or change
was introduced in a range of commits.

fork the is repo to your github personal account
https://github.com/system-dev-formations/bisect2.git

```shell
git clone https://github.com/<your_repo>/bisect2.git && cd bisect2
```{{ execute T1 }}

Set the range of commits to test
Here, HEAD represents a known bad revision and HEAD˜10
represents a known good revision—ten commits before current HEAD.
This establishes your starting range and starts the operation in one
command.

```shell
 git bisect start HEAD HEAD~10
```{{ execute T1 }}

Check 
```shell
./sum2.sh 5 4 
```{{ execute T1 }}

This is a bad result
```shell
 git bisect bad 
```{{ execute T1 }}

Check 
```shell
./sum2.sh 5 4 
```{{ execute T1 }}

This a good result 
```shell
 git bisect good
```{{ execute T1 }}