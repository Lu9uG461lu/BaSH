#!/bin/bash
CONT=0
for i in `ls /var/log`; do
	echo "Encontrado o arquivo: $i"
	sleep .15
	CONT=`echo "$CONT + 1" | bc -l`
done
echo "Quantidade de arquivos: $CONT"
