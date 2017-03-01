#/bin/bash
#reading and writin to a file using file decriptor

echo "Enter a file to read"
read FILE

exec 5<>$FILE

while read -r NAME;do
  echo "Name: $NAME"
done <&5

echo "File was read on `date`" >&5

exec 5>&-
