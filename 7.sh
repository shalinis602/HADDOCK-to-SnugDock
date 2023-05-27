#!/bin/sh

get_files () {
  files="`ls B/*.pdb`"
        }

get_files

for f in $files
	do
		pdb_selres -96: $f > W_$f
	done
