#!/bin/bash

chmod +x ./*.sh
find . -name "*.sh" -print0 | xargs -0 dos2unix --

echo Splitting the complex pdb files into antibody and antigen pdb files
time ./pdb_split.sh #1

echo Creating the temp folders
mkdir A B H_A H_H_A L_A L_L_A reres_L_L_A V_B V_V_B W_B W_W_B fin output

echo Moving the antibody residues to A folder and antigen residues to B folder
mv *_A.pdb A/ 
mv *_B.pdb B/

echo Selecting all the L chain residues from the antibody 
time ./selres_L.sh #2

echo Selecting all the H chain residues from the antibody
time ./selres_H.sh #3

echo Replacing chain id A in antibody pdb files by chain id H
time ./rplchain_AH.sh #4

echo Replacing chain id A in antibody pdb files by chain id L
time ./rplchain_AL.sh #5

echo Renumbering the L chain residues from index 1
time ./reres_L.sh #6

echo Selecting all the W chain residues from the antigen
time ./selres_W.sh #7

echo Selecting all the V chain residues from the antigen
time ./selres_V.sh #8

echo Replacing chain id B in antigen pdb files by chain id W
time ./rplchain_BW.sh #9

echo Replacing chain id B in antigen pdb files by chain id V
time ./rplchain_BV.sh #10

echo Adding chain ids to names of all the files
time ./rename.sh #11

mv H_H_A/*.pdb fin/
mv reres_L_L_A/*.pdb fin/
mv V_V_B/*.pdb fin/
mv W_W_B/*.pdb fin/

mv concat.sh fin/
mv reatom.sh fin/
cd fin/

echo Creating the new antibody and antigen files by joining the renamed chains
time ./concat.sh #12

echo Renumbering all the pdb files
time ./reatom.sh #13

cd ..
cp -r fin/reatom_* output/

echo Deleting all the remp folders
rm -r H_H_A reres_L_L_A L_L_A V_V_B W_W_B A B L_A H_A V_B W_B 
rm -r fin

echo Your output files are stored in the output folder
