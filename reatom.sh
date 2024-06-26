#!/bin/sh

get_files () {
  files="`ls rf_*.pdb`"
        }

get_files

for f in $files
	do
		pdb_reatom $f > reatom_$f
	done
