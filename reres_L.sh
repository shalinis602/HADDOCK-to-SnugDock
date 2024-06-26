#!/bin/sh

get_files () {
files="`ls L_L_A/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_reres $f > reres_$f
	done
