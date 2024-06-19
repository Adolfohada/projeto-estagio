#!/bin/bash

menu(){
    echo -e '\n##### Meu nome é Adolfo sejam bem vindo ao meu projeto #####\n\n'
    
    echo "Selecione uma das 3 opções abaixo: "
    echo "1. Teste de conectividade "
    echo "2. Obtendo informações da rede "
    echo "3. Sair "
   
    
    read opcao 
}


while true; do
    menu

    case $opcao in 
        1)
            read -p "Digite o endereço IP para teste de conectividade: " ip_address
            echo "Teste de conectividade para $ip_address"

            if ping -c 1 $ip_address; then
                echo "O dispositivo com o IP está online."
            else
                echo "O dispositivo com o IP está offline."
            fi
            ;;
         
        2)



interface=$(ip route show | awk '/default/ {print $5}')

ip_info=$(ip addr show $interface | grep -w inet)
ip_address=$(echo $ip_info | awk '{print $2}')

echo "Interface de Rede: $interface"
echo "Endereço IP: $ip_address"

;;


        3) 
            echo "Saindo do programa"
            exit
            ;;
        *)
            echo "Não existe essa opção, favor escolher de 1 a 3. "
            ;;
    esac
done
