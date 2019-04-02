## SSH Shell Script Lib

This repo is meant to be a submodule for a collection of bash scripts used to manage many random servers with SSH and SFTP.

## Setting up this repo as a submodule:
```bash
git clone <parent_repo>
cd <parent_repo>
git submodule add https://github.com/cody35367/ssh-sh-lib.git lib
git commit -m "Add lib as a submodule"
git push
```
## Fresh pull of new parent repo:
```bash
git clone <parent_repo>
cd <parent_repo>
git submodule init
git submodule update
```
## Update the submodule in parent repo:
```bash
cd <parent_repo>
git submodule init
git submodule update --remote
git add -A
git commit -m "Updated submodule"
git push
```
## Suggested parent structure:
```bash
keys/
lib/ #This repo a submodule
SAMPLE_PARENT_RUNNER.sh
.gitignore
```
## Suggested .gitignore for parent:
```
keys/*
!.gitkeep
```
## Example runs:
```bash
# Open regular SSH session
~/repos/ssh-connect-scripts/SAMPLE_PARENT_RUNNER.sh

# Open filezilla session
~/repos/ssh-connect-scripts/SAMPLE_PARENT_RUNNER.sh -f

# Open ssh session but print more verbose info
~/repos/ssh-connect-scripts/SAMPLE_PARENT_RUNNER.sh -v
```