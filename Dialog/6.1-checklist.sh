#!/bin/bash
OPCAO=`dialog --stdout --separate-output --checklist "O que pretende apagar?" 0 40 3 \
	usuarios "Todos os usuários" ON \
	programas "Todos os programas" ON \
	tudo "tudo mesmo..." OFF `
dialog --infobox "Opções: $OPCAO " 0 0
sleep 3
clear
echo $OPCAO
