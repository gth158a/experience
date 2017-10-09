git status # shows everything that changed since last commit

git diff # to see everything that has changed

git commit -m "message" # regular commit

git remote -v
# to check origin/upstream

git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git
# to setup upstream

# covered commands:
# branch{-d, -D, -b},
# checkout {-- .},
# merge{ --abort, --squash},
# log{-2},
# stash{save, pop, list apply, drop, clear}

######
# to branch
git branch name-of-branch

git branch # to display all branches
# master
# * new-branch

git branch -d name-of-branch # to delete branch

# if not fully merged you  need ot replace -d with -D
git branch -D name-of-branch

######
# if you cant delete it you can check it out
git checkout front-end-fixes

# commit or stash before switches branches

git checkout 4524545-45344 # you can checkout to a commit reference

git checkout -- filewedontcare.txt # to discard chenges in one file

#combo
git checkout -b newbranch # to create branch and check it out

######
git merge branch-to-be-merged # do this from the master branch

git log -2 # shows the last two commits

# merge conflicts provide flags to identify what needs to be done
# <<<<<<< HEAD # changes in the branch currently checked out
# ======== # changes in incoming branch
# >>>>>>>> name-of-branch

git merge --abort

git merge --squash # to avoid bringing the history
# this will prep the commit but you still have to commit

######
git branch -d clean-up-variables # not to clear on this [refer to notes]



git stash save "worked on add function" # to stash changes

git stash list

git stash apply stash@{0}

git checkout -- . # to reset changes

git stash pop #Will grab the first stash, Apply changes  And drop stash

git stash drop stash@{0}

git stash clear # To get rid of all stashes  (CAREFUL)

# if accidentally worked on master branch
# stash, then change branch, stash pop, add, then commit
