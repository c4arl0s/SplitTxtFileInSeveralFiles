#!/bin/bash

numberOfLines=`wc -l glossary.txt | cut -f 6 -d " "`
echo -e "number of lines $numberOfLines"

cat glossary.txt | while read line; do
	
	word=`echo $line | cut -f 1 -d ":" |  tr [A-Z] [a-z]`
	echo "$word"

done

