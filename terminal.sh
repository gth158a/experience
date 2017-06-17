# Terminal

cat filename | head -n 5
# see first five lines

cat filename | head -c 140
# see first 140 characters

cat filename | tail -n 5
# see last five lines

cat part* > all_parts
# join all files that start with part into one filename all_parts


###############################
# NEW

touch filename
# create empty files name

New-Item command
#creates an empty directory



###############################

cp -r something newplace
# Use the cp -r command to copy more directories with files in them.
# Put a / at the end of the directory to make sure the file is really
# a directory

###############################

mv oldfile.txt newfile.txt
# Moving files or, rather, renaming them.

###############################

# View A File (less, more)
less ex12.txt
#q to quit

###############################

pushd
# It's like saying, "Save where I am, then go here."
# takes your current directory and "pushes" it into a list for later,
#then it changes to another directory.

pushd, if you run it by itself with no arguments,
will switch between your current directory and the last one you pushed.

#It's an easy way to switch between two directories.

popd
# takes the last directory you pushed and "pops" it off, taking you back there.

source filename
# you need to source your dotfiles after making changes for them to take
# effect (or log off and in again)

# Dealing with Text
# from http://mally.stanford.edu/~sr/computing/more-unix.html
CTRL-d # delete next character
CTRL-k # delete rest of line
CTRL-a # go to start of line
CTRL-e # go to end of line
CTRL-b # go backwards without deleting
CTRL-f # go forward without deleting

###############################

# to list the contents of folder sorted by date
repos ls -llt | head -n 3
# total 388200
# drwxr-xr-x   13 jaimealmeida  staff        442 Jun 17 13:33 worklog
# drwxr-xr-x    5 jaimealmeida  staff        170 Jun 17 11:19 sql
 
