
#!/usr/bin/env bash
# bash shebang

# to make filename executable
chmod 700 <filename>.sh


sleep 0.2 # useful in while loops

date
# Sat Jul  7 00:29:44 PDT 2018

date +%D
# 07/07/18

date +%Y-%m-%d
# 2018-07-07

date +%Y-%m-%d': '%A
# 2018-07-07: Saturday

# + is the format modifier


join file1.csv file2.csv
# merge files using first column
# only work with sorted files

sort


# Print specific columns: cut
cut -d',' -f1,2,3,15,16 flightdelays.csv
# cut cant change order?


grep

# returns everything BUT
grep -v 'N749SW' flightdelays.csv

# case insensitive
grep -i 'n749sw' flightdelays.csv

# print line number
grep -n 'N749SW' flightdelays.csv


jq


# variables
pi=3.1415

echo $pi
# 3.1416

echo "The value of pi is:" $pi
# The value of pi is: 3.1416

# to modify variable
a=1
echo $a
# 1
a=$((a + 1))
echo $a
# 2

# while looop
i = 0
while [ $i -lt 4 ]
do
echo $i
i=$((i + 1))
done
# 0
# 1
# 2
# 3

# IF statements in bash
#!/usr/bin/env bash
i=2
if (( $i % 2 == 0 ))
then
echo 'even'
else
echo 'odd'
fi


# reorder columns in text files
awk -F',' '{print $17,$15,$18,$16}' flightdelays.csv

# awk – sum rows
cut -d',' -f15 flightdelays.csv | awk '{sss+=$1} END {print sss}'
# in this case cut selects the column
# and awks adds it up


wc flightdelays.csv

# count characters
wc -c flightdelays.csv
# count words
wc -w flightdelays.csv
# count lines
wc -l flightdelays.csv
# count characters in longest line
wc -L flightdelays.csv
