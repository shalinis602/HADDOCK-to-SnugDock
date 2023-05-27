chmod +x ./*.sh
find . -name "*.sh" -print0 | xargs -0 dos2unix --
echo pdb_split
./1.sh 
mkdir A B H_A H_H_A L_A L_L_A reres_L_L_A V_B V_V_B W_B W_W_B fin output
mv *_A.pdb A/
mv *_B.pdb B/
echo L_A
./2.sh
echo H_A
./3.sh
echo H_H_A
./4.sh
echo L_L_A
./5.sh
echo reres_L_L_A
./6.sh
echo W_B
./7.sh
echo V_B
./8.sh
echo W_W_B
./9.sh
echo V_V_B
./10.sh
echo rename
./11.sh
cp -r H_H_A/*.pdb fin/
cp -r reres_L_L_A/*.pdb fin/
cp -r V_V_B/*.pdb fin/
cp -r W_W_B/*.pdb fin/
cp 12.sh fin/
cp 13.sh fin/
cd fin/
echo concat
./12.sh
echo reatom
./13.sh
cd ..
cp -r fin/reatom_* output/
rm -r H_H_A reres_L_L_A L_L_A V_V_B W_W_B A B L_A H_A V_B W_B 
rm -r fin
