#!/bin/bash
#6-ip.sh
rede=( $(ifconfig | awk -F: '/mtu/{print $1}') )
endip=( $(ifconfig | awk -F" " '/netmask/{print $2}') )
mascara=( $(ifconfig | awk -F" " '/netmask/{print $4}') )
clear
for ((i=0 ; i<=(( ${#rede[@]}-1 ));i++)); do
echo "O endereço de IP da interface ${rede[$i]} é ${endip[$i]} e sua máscara de rede é
${mascara[$i]}"
done
