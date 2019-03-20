#!/bin/bash


echo "Vowels : `cat $1 | tr '[a-z]' '[A-Z]' | grep -o "A\|E\|I\|O\|U" | wc -l`"
echo "Characters : $(cat $1 | wc -c)"
echo "Blank lines : $(grep  -c '^$' $1)"
echo "Lines : $(cat $1 | wc -l )"
