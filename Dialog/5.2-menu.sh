#!/bin/bash
dialog --menu "Selecione uma opção do menu: " 0 0 3 \
	1 "Opção 1" \
	2 "Opção 2" \
	3 "Opção 3" 2>/tmp/arquivotemporario
clear
echo `cat /tmp/arquivotemporario`
echo "==========================================================="

