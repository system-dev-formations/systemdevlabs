
## Plumbing commands
```
cd ~ $$ mkdir plumbing $$ cd plumbing && git init
```{{ execute T1}}

List all files/directories in the .git directory
```
ls .git
```{{ execute T1 }}

Usage of a git plumbing command
```
echo " an awesome sheep admires the Alps" > animals.txt
```{{ execute T1 }}

```
git hash-object -w animals.txt
```{{execute T1}}

The hash-object command takes a path to a file, reads its contents, and saves the contents of the file to the Git object store. 
It returns a hex string – the ID of the object it’s just created.

```
find .git/objects -type f
```{{execute T1}}

Get the content of a file using the SHA1 index

```
git cat-file <SHA1>
```{{ copy }}



