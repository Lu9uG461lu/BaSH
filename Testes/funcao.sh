#!/bin/bash
function funcao1 {
	echo "Você chamou a função 1 com o argumento $1"
	echo "E o usuário é o $USER"
}
funcao2() {
	echo "Você chamou a função 2 com o argumento $1"
	echo "O home é o $HOME"
}
funcao1 $1
read -n1 -p "Aperte qualquer tecla para continuar!"
funcao2 $1
