#!/bin/bash

numberOfLines=`wc -l glossary.txt | cut -f 6 -d " "`
echo -e "number of lines $numberOfLines"
cat glossary.txt | head -100 | tail -1 | cut -f 2 -d ":"
