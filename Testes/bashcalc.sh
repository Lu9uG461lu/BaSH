#!/bin/bash
function entrada {
	num1="string"
	num2="string"
	clear
	until grep -E ^[0-9]+$ <<< $num1
	do
		clear
		echo "ATENÇÃO! DIGITE SOMENTE NÚMEROS!"
		read -p "Digite o primeiro número: " num1
	done
	until grep -E ^[0-9]+$ <<< $num2
	do
		clear
		echo "ATENÇÃO! DIGITE SOMENTE NÚMEROS!"
		read -p "Digite o segundo número: " num2
	done	
	clear
	echo ""
	echo ""
}
entrada
while ! [ "$OPCAO" = "9" ]; do
	echo "Os números digitados foram: $num1 e $num2"
	echo "Caro usuário: escolha uma das opções abaixo: "
	echo "(1) para adição ----------------------------------------> "
	echo "(2) para subtração -------------------------------------> "
	echo "(3) para multiplicação ---------------------------------> "
	echo "(4) para divisão ---------------------------------------> "
	echo "(5) para potenciação -----------------------------------> "
	echo "(6) para raíz quadrada ---------------------------------> "
	echo "(7) para fatorial --------------------------------------> "
	echo "(8) Entre novamente com o primeiro e segundo número ----> "
	echo "(9) Sair da calculadora --------------------------------> "
	read -n1 OPCAO
	case $OPCAO in
		1)
			clear
			echo "$num1 + $num2 = `echo "$num1 + $num2" | bc -l`"
			echo ""
			;;
		2)
			clear
			echo "$num1 - $num2 = `echo "$num1 - $num2" | bc -l`"
		 	echo "$num2 - $num1 = `echo "$num2 - $num1" | bc -l`"
			;;
		3)
			clear
			echo "$num1 * $num2 = `echo "$num1 * $num2" | bc -l`"
			echo ""
			;;
		4)
			clear
			if ! [ "$num2" = "0" ]; then
				echo "$num1 / $num2 = `echo "$num1 / $num2" | bc -l`"
			else
				echo "$num1 / $num2 = IMPOSSÍVEL"
			fi
			if ! [ "$num1" = "0" ]; then
                                echo "$num2 / $num1 = `echo "$num2 / $num1" | bc -l`"
                        else
                                echo "$num2 / $num1 = IMPOSSÍVEL"
                        fi
			;;
		5)	
			clear
			echo "$num1 ^ $num2 = `echo "$num1 ^ $num2" | bc -l`"
                        echo "$num2 ^ $num1 = `echo "$num2 ^ $num1" | bc -l`"
			;;
		6)
			clear
			echo "Raíz quadrada de $num1 é `echo "sqrt($num1)" | bc -l`"
			echo "Raíz quadrada de $num2 é `echo "sqrt($num2)" | bc -l`"
			;;
		7)
			clear
			FATORIAL=1
			for ((i=1; i<=$num1; i++))
			do
				FATORIAL=`echo "$FATORIAL * $i" | bc -l`
			done
			echo "O fatorial de $num1 é: $FATORIAL"
			for ((i=1; i<=$num2; i++))
                        do
                                FATORIAL=`echo "$FATORIAL * $i" | bc -l`
                        done
			echo "O fatorial de $num2 é: $FATORIAL"
			;;
		8)
			entrada
			;;
		9)
			clear
			echo "Saindo da calculadora..."
			apt moo
			sleep 3
			clear
			;;
		*)
			clear
			echo "OPÇÃO INVÁLIDA!"
			echo ""
			;;
	esac
done
