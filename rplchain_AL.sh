#!/bin/sh

get_files () {
files="`ls L_A/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_rplchain -A:L $f > L_$f
	done
