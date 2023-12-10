#!/bin/bash
#Script para roda Carreiras 
# author @WillTbn
atual=`date`
echo -n "Ola $whoami" 
whoami
echo "Hoje é $atual" 
echo "Oque você deseja fazer agora? $imprimi"
echo "|---------------------------------------|"
echo "|  →  1 - backend Carreiras             |"
echo "|  →  2 - Carreiras adm                 |" 
echo "|  →  3 - Carreiras app                 |"
echo "|---------------------------------------|"
read -p "Digite oque quer fazer: " a_input
echo "Você digitou ${a_input}"
while [ -n  "$a_input" ]
do
    case "$a_input" in
        1)  echo "Roda somente backend Carreiras"
            cd ..;cd Backend-Carreiras; php7.4 artisan serve;
        ;;
        2)  echo "Carreiras administração"
            cd adm-carreiras; npm run serve
        ;;
        3)  echo "Carreiras sistema"
            cd vuejs-carreiras; npm run serve
        ;;
        *) echo "Presta atenção, digitou opção não listada!";;
    esac
    break
done
