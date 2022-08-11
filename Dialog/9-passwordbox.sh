#!/bin/bash
SENHA=`dialog \
   --stdout \
   --title "Confirmação" \
   --insecure --passwordbox "Por favor, confirme a senha:" \
   0 0`
clear
echo "A senha que você digitou é: $SENHA"
