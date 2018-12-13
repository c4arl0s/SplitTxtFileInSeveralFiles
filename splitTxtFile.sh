#!/bin/bash

numberOfLines=`wc -l glossary.txt | cut -f 6 -d " "`
echo -e "number of lines $numberOfLines"

cat glossary.txt | while read line; do
	
	definition=`echo $line | cut -f 1 -d ":" | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1'`
	echo "$definition"
	#renameNoSpace=`sed '/^ *$/d' $definition`
	definitionNoSpace=`echo "$definition" | tr -d ' '`
	#touch $renameNoSpace.txt
	echo "$definitionNoSpace"
	#echo "$line" > $renameNoSpace.txt	

done

