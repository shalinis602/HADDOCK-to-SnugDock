#!/bin/sh

get_files () {
  files="`ls V_B/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_rplchain -B:V $f > V_$f
	done
