# Terminal

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
