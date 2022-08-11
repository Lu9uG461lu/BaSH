#!/bin/bash
#8-pg.sh
a= "string"
q= "string"
n= "string"
until grep -E ^[0-9]+$ <<< $a
do
	clear
	echo "Digite somente números!!"
	read -p "Digite o primeiro elemento: " a
done
until grep -E ^[0-9]+$ <<< $q
do
	clear
	echo "Digite somente números!!"
	read -p "Digite a razão: " q
done
until grep -E ^[0-9]+$ <<< $n
do
	clear
	echo "Digite somente números!!"
	read -p "Digite a quantidade de elementos: " n
done
clear
v=" "
echo -e "Primeiro elemento: $a\nRazão: $q\nQuantidade de elementos: $n"
sleep 2
for ((i = 1; i <= $n; i++));
do
	v[$i]=`echo "$a * $q ^ ($i - 1)" | bc -l`
done
echo ""
echo "Progressão geométrica:${v[@]}"
