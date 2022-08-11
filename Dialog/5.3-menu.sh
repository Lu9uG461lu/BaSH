#!/bin/bash
OPCAO=`dialog --stdout --menu "\
	Selecione uma opção do menu: " 0 0 3 \
	1 "Opção 1" \
	2 "Opção 2" \
	3 "Opção 3"`
dialog --infobox "Sua resposta foi $OPCAO" 0 0
sleep 5
clear
echo $OPCAO
