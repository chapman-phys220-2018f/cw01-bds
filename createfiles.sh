#!/bin/bash

if [ ! -d tmpfiles ];
then
	mkdir tmpfiles;
fi
cd tmpfiles;
for i in $(seq 100);
do
	touch $(printf "file%03d.txt" $i);
	echo $(printf "Temporary file %03d" $i) >>  $(printf "file%03d.txt" $i);
done

exit 0;
