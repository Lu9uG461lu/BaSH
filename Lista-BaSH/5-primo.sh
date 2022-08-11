#!/bin/bash
#5-primo.sh
num= "string"
until grep -E ^[0-9]+$ <<< $num
do
	clear
	echo "Somente números"
	read -p "Digite um número: " num
done
condic1=1
condic2=1
while [ "$condic1" -le "$num" ]
do
	condic1=$[ $condic1 + 1]
	resultado=$[ $num % $condic1 ]
	if [ "$resultado" = "0" ]
	then
		condic2=$[ $condic2 + 1 ]
	fi
done
if [ "$condic2" = "2" ]
then
	echo "É número primo"
else 
	echo "Não é número primo"
fi
