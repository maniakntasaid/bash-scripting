#!/bin/bash
#simple file reading(non-binary) and displaying one line at a time
#this script uses the hero.txt file in the directory, pass hero.txt when prompted

echo "Enter the file name to read"
read FILE

while read -r NAME; do
    echo "The Superhero name is: $NAME "
done < "$FILE"
