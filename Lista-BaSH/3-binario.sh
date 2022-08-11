#!/bin/bash
#3-binario.sh
bin= "string"
until grep -E ^[0-1]+$ <<< $bin
do
	clear
	echo "Digite um número em binário"
	read -p "Digite o binário: " bin
done
decimal=0
cont=0
for ((i = $((${#bin} - 1)); i>= 0 ; i--));
do
	decimal=`echo "$decimal + (${bin:$i:1} * (2 ^ $cont))" | bc -l`
	cont=`echo "$cont + 1" | bc -l`
done
clear
echo ""
echo "O número binário $bin em formato decimal é $decimal."
echo ""
