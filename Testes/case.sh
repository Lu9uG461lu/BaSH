#!/bin/bash
while ! [ "$A" = "3" ]; do
	# Limpa a tela
	clear
	# Exibe o menu inicial
	echo "		1) Opção 1;"
	echo "		2) Opção 2;"
	echo "		abobrinha) Opção abobrinha;"
	echo "		3) Sair;"
	# Atribuição de uma opção escolhida pelo usuário
	read OPCAO
	# Execução da opção escolhida pelo usuário
	case $OPCAO in
		1)
		# Nesta opção será exibido a hora e data atual do sistema
		echo "Você escolheu a opção 1!"	
		echo "Data e hora atual: `date`"
		sleep 3
		clear
		;;
		2)
		# Nesta opção será exibido a hora e data atual do sistema
		echo "Você escolheu a opção 2!"
		echo "Data e hora atual: `uname -a`"
       		sleep 3
       		clear
       		;;
		abobrinha)
		# Nesta opção, você será atropelado por uma locomotiva :D
		echo "Você escolheu a opção abobrinha!"
		sleep 3
		/usr/games/sl -l
		clear
		;;
		3)
		A=$OPCAO
		clear
		;;
		*)
		# Informação de opção errada escolhida.
		echo "Você escolheu uma opção inválida!!!"
		sleep 3
		clear
		;;
	# Finalização do programa
	esac
done

