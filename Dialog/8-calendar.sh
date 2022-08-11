#!/bin/bash
DATA=`dialog --stdout --title "Escolha a data" --calendar "" 0 0 31 12 1999`
dialog --infobox "A data escolhida foi: $DATA" 0 0
sleep 5
clear
