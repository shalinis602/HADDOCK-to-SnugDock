#!/bin/sh

get_files () {
  files="`ls W_B/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_rplchain -B:W $f > W_$f
	done
