#!/bin/bash
#4-par.sh
num="string"
until grep -E ^[0-9]+$ <<< $num
do
	clear
	echo "Digite somente números"
	read -p "Digite um número: " num

done
resto=$[ $num % 2 ]
if [ "$resto" = "0" ]; then
	echo "O número é par"
else
	echo "O número é impar"
fi
