#!/bin/sh
# htmlComments 
# written by nerbies

echo "Enter URL:"
read url

echo "save er"

wget $url --no-check-certificate -O tempCommentsPage.html

echo "sraping da page..."

cat tempCommentsPage.html | grep "<!" | cut -d "!" -f2 | cut -d ">" -f1 | sort -u > comments.txt

rm tempCommentsPage.html

echo "comments printed to comments.txt"
