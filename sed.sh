# SED one liners

cat pwd-only3 | sed 's/       / /g' | sed 's/,/ /g' > pwd-only3-def
# to replace TAB you have to literally use a tab '\t' does not do the job
# Precede it with Control + V, followed by Tab to suppress the usual expansion behavior.
