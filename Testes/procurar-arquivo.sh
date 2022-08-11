#!/bin/bash
if [ "$#" = "O" ];then
	echo -e "\nPor favor, utilize: \n\n\t# $0 <arquivo>\n"
else
	echo -e "\nProcurando por $1\t\t\c"
	ACHEI=`find ./ -name $1 2>/dev/null`
	if [ "$ACHEI" != "" ];then
		echo -e "Localizado $ACHEI"
	else
		echo -e "\tFALHOU!"
	fi
	echo
fi
