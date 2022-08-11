#!/bin/bash
OPCAO=`dialog --stdout \
	--backtitle "Programa 0.6 Alpha" \
	--title "Menu de Opções" \
	--separate-output \
	--checklist "O que pretende apagar?" 0 0 0 \
		usuarios "Todos os usuários" ON \
		programas "Todos os programas" ON \
		diretórios "Todos os diretórios" OFF \
		sub-diretórios "Todos os diretórios e sub-diretórios" OFF \
		kernels_antigos "Todas as versões antigas de kernels" OFF \
		tudo "Tudo mesmo..." OFF `
dialog --backtitle "Programa 0.6 Alpha" --title "Informação: " --infobox "Opções escolhidas: $OPCAO" 0 0
sleep 5
clear
echo $OPCAO
