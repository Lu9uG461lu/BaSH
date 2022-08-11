#!/bin/bash
#7-pa.sh
a= "string"
r= "string"
n= "string"
until grep -E ^[0-9]+$ <<< $a
do
	clear
	echo "Digite somente números"
	read -p "Digite o primeiro elemento: " a
done
until grep -E ^[0-9]+$ <<< $r
do
        clear
        echo "Digite somente números"
        read -p "Digite a razão: " r
done
until grep -E ^[0-9]+$ <<< $n
do
        clear
        echo "Digite somente números"
        read -p "Digite a quandiade de elementos: " n
done
clear
v=" "
echo -e "Primeiro elemento: $a\nRazão: $r\nQuantidade de elementos: $n"
sleep 2
for ((i = 1; i <= $n; i++));
do
	v[$i]=`echo "$a + (($i - 1) * $r)" | bc -l`
done
echo ""
echo "Progressão aritmética:${v[@]}"
