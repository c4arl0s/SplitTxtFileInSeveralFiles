#!/bin/bash

numberOfLines=`wc -l glossary.txt | cut -f 6 -d " "`
echo -e "number of lines $numberOfLines"

cat glossary.txt | while read line; do
	
	word=`echo $line | cut -f 1 -d ":" | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1'`
	echo "$word"
	renameNoSpace=`echo ${word/ /}`
	touch $renameNoSpace.txt
	echo "$line" > $renameNoSpace.txt	

done

