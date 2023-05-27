#!/bin/sh

get_files () {
  files="`ls H_A/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_rplchain -A:H $f > H_$f
	done
