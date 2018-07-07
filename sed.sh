# SED one liners

cat pwd-only3 | sed 's/       / /g' | sed 's/,/ /g' > pwd-only3-def
# to replace TAB you have to literally use a tab '\t' does not do the job
# Precede it with Control + V, followed by Tab to suppress the usual expansion behavior.

# subtitute commas with spaces across whole file
sed ‘s/,/ /g’

# SED can take regular expressions
# substitute all numbers with 'x'
sed 's/[0-9]/x/g'

# delete all empty lines
sed '/^$/d'

# d - delete
# i - insert a line before
# a - insert a line after
# c - change a line with another

# tutorial: http://www.grymoire.com/Unix/Sed.html
