#!/bin/bash
function entrada_de_numeros {
	num1="string"
	num2="string"
	until grep -E ^[0-9]+$ <<< $num1
	do
		num1=`dialog --stdout\
			--backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
			--title "Entrada de número (Somente números!)"\
			--ok-label "ENTER"\
			--no-cancel\
			--inputbox "Digite o primeiro número: " 0 0`
	done
	until grep -E ^[0-9]+$ <<< $num2
        do
                num2=`dialog --stdout\
                        --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                        --title "Entrada de número (Somente números!)"\
                        --ok-label "ENTER"\
                        --no-cancel\
                        --inputbox "Digite o segundo número: " 0 0`
        done
}
entrada_de_numeros
while ! [ "$OPCAO" = 9 ]; do
	OPCAO=`dialog --stdout\
		--backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
		--title "Menu de opções"\
			--ok-label "ENTER"\
			--no-cancel\
			--menu "Os números escolhidos foram: $num1 e $num2\n\
	Escolha uma opção do menu: " 0 0 0\
		1 "Para adição ------------------------>"\
                2 "Para subtração --------------------->"\
                3 "Para multiplicação ----------------->"\
                4 "Para divisão ----------------------->"\
                5 "Para potenciação ------------------->"\
                6 "Para raíz quadrada ----------------->"\
                7 "Para fatorial ---------------------->"\
                8 "Digitar os números novamente ------->"\
		9 "Sair da calculadora ---------------->"`
	case $OPCAO in
		1)
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
				--title "Resultado da Adição"\
				--ok-label "ENTER"\
				--msgbox "$num1 + $num2 = `echo "$num1 + $num2" | bc -l`" 0 0
			;;
		2)
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Resultado da Subtração"\
                                --ok-label "ENTER"\
                                --msgbox "$num1 - $num2 = `echo "$num1 - $num2" | bc -l`\n$num2 - $num1 = `echo "$num2 - $num1" | bc -l`" 0 0
                        ;;
		3)
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Resultado da Multiplicação"\
                                --ok-label "ENTER"\
                                --msgbox "$num1 * $num2 = `echo "$num1 * $num2" | bc -l`" 0 0
                        ;;
		4)
			if ! [ "$num2" = "0" ]; then
				div1=`echo "$num1 / $num2" | bc -l`
			else
				div1=`echo "IMPOSSÍVEL"`
			fi
			if ! [ "$num1" = "0" ]; then
                                div1=`echo "$num2 / $num1" | bc -l`
                        else
                                div1=`echo "IMPOSSÍVEL"`
                        fi
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Resultado da Divisão"\
                                --ok-label "ENTER"\
                                --msgbox "$num1 / $num2 = $div1\n$num2 / $num1 = $div2" 0 0
                        ;;
		5)
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Resultado da Potenciação"\
                                --ok-label "ENTER"\
                                --msgbox "$num1 ^ $num2 = `echo "$num1 ^ $num2" | bc -l`\n$num2 ^ $num1 = `echo "$num2 ^ $num1" | bc -l`" 0 0
			;;
		6)
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Resultado da Raíz Quadrada"\
                                --ok-label "ENTER"\
				--msgbox "Raíz quadrada de $num1 é: `echo "sqrt($num1)" | bc -l`\nRaíz quadrada de $num2 é: `echo "sqrt($num2)" | bc -l`" 0 0
			;;
		7)
			FAT1=1
			FAT2=1
			for ((i=1; i<=$num1; i++))
			do
				FAT1=`echo "$FAT1 * $i" | bc -l`
			done
			for ((i=1; i<=$num2; i++))
                        do
                                FAT2=`echo "$FAT2 * $i" | bc -l`
                        done
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Resultado do Fatorial"\
                                --ok-label "ENTER"\
                                --msgbox "$num1! = $FAT1\n$num2! = $FAT2" 0 0
                        ;;
		8)
			entrada_de_numeros
			;;
		9)
			dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
                                --title "Finalização do Programa"\
				--infobox "Saindo da calculadora..." 0 0
			sleep 3
			apt moo 2>/dev/null | dialog --backtitle "Programa Calculadora Dialog - by Prof. Eduardo"\
				--title "Finalização do Programa"\
				--ok-label "Sair da Calculadora"\
				--programbox "Saindo da calculadora..." 14 30
			clear
                        ;;
	esac
done
