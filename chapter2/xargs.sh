#! /bin/bash

# the xargs commend with '-n' argument will let the output to be 2
echo ------------------------------------------------------------------
cat ./args.txt | xargs -n 2 ./cecho.sh

echo ------------------------------------------------------------------
# the xargs comment with '-I' will replace the content og "{}"
cat ./args.txt | xargs -I {} ./cecho.sh -p {} -l

echo ------------------------------------------------------------------
# use find & xargs
find . -type f -name "*.txt" -print0 | xargs -0 wc -l

echo ------------------------------------------------------------------
# use while & subshell
cat files.txt | (while read arg;do cat $arg;done)

echo ------------------------------------------------------------------
# same as xargs
cat files.txt | xargs -I {} cat {}

echo ------------------------------------------------------------------
cat files2.txt | (while read line;do echo $line;done;)

echo ------------------------------------------------------------------
cat files2.txt | (while read line;do echo $line;cd $line;pwd;ls;cat test.txt;done;)
