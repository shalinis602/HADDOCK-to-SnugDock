#!/bin/sh

get_files () {
  files="`ls B/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_selres -:95 $f > V_$f
	done
