#!/bin/bash
VAR1=`dialog --stdout --inputbox "Digite o primeiro valor: " 0 0`
VAR2=`dialog --stdout --inputbox "Digite o segundo valor: " 0 0`
dialog --msgbox "$VAR1 + $VAR2 = `echo "$VAR1 + $VAR2" | bc -l`\n
$VAR1 - $VAR2 = `echo "$VAR1 - $VAR2" | bc -l`\n
$VAR1 * $VAR2 = `echo "$VAR1 * $VAR2" | bc -l`\n" 0 0
clear
