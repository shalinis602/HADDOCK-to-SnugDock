#!/bin/sh

get_files () {
  files="`ls A/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_selres -121: $f > L_$f
	done
