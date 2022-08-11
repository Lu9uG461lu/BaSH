#!/bin/bash
FRASE=`dialog --stdout --inputbox "Escreva aqui qualquer bobagem" 0 0`
dialog --infobox "Sua frase é: $FRASE" 0 0
sleep 3
echo "Você escreveu: $FRASE"
clear
