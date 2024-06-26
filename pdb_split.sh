#!/bin/sh

get_files () {
  files="`ls *.pdb`"
        }
get_files

for f in $files
	do
		pdb_splitchain $f 
	done
