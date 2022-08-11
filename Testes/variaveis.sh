#!/bin/bash
clear
echo "Os parâmetros do script são: $@"
echo "O script que está sendo executado é: $0"
echo "A quandidade de parâmetros é: $#"
echo "O primeiro parâmetro é: $1"
echo "O segundo parâmetro é: $2"
echo "O terceiro parâmetro é: $3"
echo "A soma do primeiro parâmetro com o segundo parâmetro é: $(($1+$2))"
