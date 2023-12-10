#!/bin/bash
#Script para roda Carreiras 
# author @WillTbn
atual=`date`
opc=""
echo -n "Ola $whoami" 
whoami
echo "Hoje é $atual" 
echo "Qual product você quer atualizar? $imprimi"
echo "|---------------------------------------|"
echo "|  →  0 - biuld up website              |"
echo "|  →  1 - biuld up sistema carreiras    |"
echo "|  →  2 - biuld up admin carreiras      |" 
echo "|---------------------------------------|"
read -p "Digite qual: " a_input
echo "Você digitou ${a_input}"
while [ -n  "$a_input" ]
do
    case "$a_input" in
        0)  opc="website";
            echo "Tentativa de atualiza pasta product do ${opc}"
            cd ..;
            cp -r carreiras/site-carreiras/dist/* v0-build-carreiras/v0-website/;
            echo "atualizado o ${opc}";
        ;; 
        1) opc="sistema";
            echo "Tentativa de atualiza pasta product do ${opc}"
            cd ..;
            cp -r carreiras/vuejs-carreiras/dist/* v0-build-carreiras/v0-sistema/;
        ;;
        2)  opc="administrador"
            echo "Tentativa de atualiza pasta product do ${opc}"
            cd ..;
            cp -r carreiras/adm-carreiras/dist/* v0-build-carreiras/v0-adm/;
        ;;
        *) opc="EXCEPTION"; 
        echo "Não temos suporte para ${a_input}  ${opc}";;
    esac
    break
done
