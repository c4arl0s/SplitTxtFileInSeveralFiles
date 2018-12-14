#!/bin/bash
file=$1
echo "pattern in the file -> definition:Meaning"
numberOfLines=`wc -l $file.txt | cut -f 6 -d " "`
echo -e "number of lines $numberOfLines"

cat $file | while read line
do
	definition=`echo $line | cut -f 1 -d ":"`
	echo "$definition"
	definitionFirstLetterCapitalized=`echo $definition | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1'`
	echo "$definitionFirstLetterCapitalized"
	definitionRemoveWhiteSpaces=`echo "$definitionFirstLetterCapitalized" | tr -d ' '`
	touch $definitionRemoveWhiteSpaces.txt
	echo "$definitionRemoveWhiteSpaces"
	echo "$line" > $definitionRemoveWhiteSpaces.txt	
done

