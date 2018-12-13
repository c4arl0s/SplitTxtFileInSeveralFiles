#!/bin/bash
txtFile=$1
path=$pwd
pathFile=./$txtFile
cat $1 | head -100 | tail -1 | cut -f 1 -d ":"
