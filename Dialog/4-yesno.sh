#!/bin/bash
dialog --yesno "Você deseja apagar tudo?" 0 0
if [ $? = 0 ]; then
	dialog --infobox "Apagando tudo, sem dó..." 0 0
	sleep 3
	clear
	echo "O valor $?"
else
	dialog --infobox "E a vida segue..." 0 0
	sleep 3
	clear
	echo "O valor é $?"
fi
