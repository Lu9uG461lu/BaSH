#!/bin/bash
clear
LINHA=`tput lines`
L1=`echo "$LINHA / 2" | bc`
COLUNA=`tput cols`
C1=`echo "$COLUNA / 2" | bc`
tput cup $L1 $C1
echo "CENTRALIZAR!"
tput cup $LINHA 0
