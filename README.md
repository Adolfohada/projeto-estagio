# Redes : Explorando os conceitos fundamentais de redes, incluindo topologias, protocolos, endereçamento IP, roteamento e segurança. Utilize uma ferramenta de sua escolha para demonstração do funcionamento.

https://www.canva.com/design/DAGICQJ1idE/6GG0NciQRGj4N0krWj41-Q/view?utm_content=DAGICQJ1idE&utm_campaign=designshare&utm_medium=link&utm_source=editor


 REDES:
   
    •  referem-se a dispositivos de computação interconectados que podem trocar dados e compartilhar recursos entre si.


 TOPOLOGIAS:

 Estrela:
    
    • Descrição: Todos os dispositivos se conectam a um ponto central, como um switch ou hub.
    • Vantagens: Fácil de gerenciar e resolver problemas. Se um dispositivo falhar, não afeta os outros.
    • Desvantagens: Dependente do ponto central. Se o switch ou hub falhar, toda a rede pode cair.
    
  Anel:

    • Descrição: Cada dispositivo está conectado ao próximo, formando um anel.
    • Vantagens: Simples e eficiente. Menos cabos são necessários.
    • Desvantagens: Uma falha em qualquer dispositivo ou conexão pode afetar toda a rede.
    
  Malha:

    • Descrição: Todos os dispositivos estão conectados uns aos outros, formando uma rede de conexões.
    • Vantagens: Muita redundância e confiabilidade. Se um caminho falhar, outros podem ser usados.
    • Desvantagens: Complexa e cara devido ao grande número de conexões.
    
 Barramento:

    • Descrição: Todos os dispositivos se conectam a um cabo central.
    • Vantagens: Fácil de implementar e expandir.
    • Desvantagens: Difícil de manter e resolver problemas. Se o cabo central falhar, toda a rede é afetada.
    
 Árvore:

    • Descrição: Organização hierárquica de dispositivos, com níveis de camadas
    • Vantagens: Fácil de expandir e organizar em grandes redes
    • Desvantagens: Se o troco principal falhar, pode afetar muitas partes da rede.
 PROTOCOLOS:

    • HTTP (Hypertext Transfer Protocol): é o protocolo usado para transmitir páginas da web do servidor para o navegador do usuário.
    • TCP/IP (Transmission Control Protocol / Internet Protocol): Conjunto de protocolos amplamente utilizado na Internet para comunicação entre dispositivos.
    • FTP (File Transfer Protocol): Protocolo usado para transferência de arquivos entre computadores.
    • SMTP (Simple Mail Transfer Protocol): Protocolo para envio de e-mails.
    • UDP (User Datagram Protocol): Protocolo de transporte que envia pacotes de dados sem a necessidade de estabelecer uma conexão.
    • HTTPS é uma versão segura do HTTP, adiciona criptografia para proteger comunicações online.

  ENDEREÇO IP:

  IPv4 (Internet Protocol version 4):
  
    • O que é: É o padrão mais antigo e amplamente usado para atribuir endereços únicos a dispositivos na internet.
    • Formato: Consiste em quatro conjuntos de números, separados por pontos, por exemplo, 192.168.1.1.
    • Limitações: Tem um número limitado de endereços (cerca de 4,3 bilhões), o que está se esgotando à medida que mais dispositivos se conectam à internet.
  
  IPv6 (Internet Protocol version 6):

    • O que é: É o novo padrão criado para substituir o IPv4 e resolver seu problema de escassez de endereços.
    • Formato: Usa um formato hexadecimal de oito conjuntos de quatro dígitos, separados por dois pontos, por exemplo, 2001:0db8:85a3:0000:0000:8a2e:0370:7334.
    • Capacidade: Oferece um número vastamente maior de endereços possíveis (mais de 340 undecilhões, o que é um número muito grande).

 ROTEAMENTO:
  
    • O roteamento é o processo pelo qual os pacotes de dados são encaminhados através de uma rede de um dispositivo para outro, até o destino desejado. Os roteadores são dispositivos fundamentais que facilitam esse processo, utilizando tabelas de roteamento para decidir o caminho mais eficiente para enviar pacotes.

  SEGURANÇA DE REDES:
  
      A segurança em redes é crucial para proteger os dados e os recursos da rede contra acessos não autorizados e ameaças. Alguns aspectos importantes incluem:
      
    • Firewall: Barreira que controla o tráfego de rede para proteger contra acessos não autorizados.
    • VPN (Virtual Private Network): Conexão segura que protege a comunicação através de redes públicas, como a Internet.
    • Criptografia: Técnica que transforma dados em um formato ilegível para proteger sua confidencialidade.
    • Autenticação: Verificação da identidade de usuários e dispositivos para garantir acesso seguro.
    • Políticas de Segurança: Diretrizes e práticas para proteger ativos de informação e sistemas contra ameaças.

  FERRAMENTA DE USO:
  
    • wireshark
    terminal : nslookup linkdosite
    para ver o endereço ip.addr== endereço ip
    ai entrar no wireshark e coloca ip.adrres
    • basicamente mostrar no wireshark, a rede que você está usando e dentro dela colocar em especifico o
    endereço ip do site que estava pesquisando e clicar nele e lá mostra tudo criptografado por conta do site em
    que estava pesquisando era https, se fosse http a pessoa em si conseguiria ver o que você estava pesquisando no site.
    

# Sistemas Operacionais: Scripting de Redes: Aborde como usar o shell script para automatizar tarefas de rede, como teste de conectividade, verificação de portas abertas e configuração de interfaces de rede.

Explicação do meu código:
```
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
```
Menu: A função menu() imprime as opções disponíveis e espera que o usuário insira sua escolha. Essa função é chamada repetidamente dentro do loop while true, garantindo que o usuário possa escolher entre as opções 1, 2 ou 3.

```
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
```
Teste de conectividade: Utiliza o comando ping -c 1 $ip_address para verificar se há conectividade com o endereço IP fornecido pelo usuário. Se o ping for bem-sucedido, exibe "O dispositivo com o IP está online."; caso contrário, exibe "O dispositivo com o IP está offline."

```
2)



interface=$(ip route show | awk '/default/ {print $5}')

ip_info=$(ip addr show $interface | grep -w inet)
ip_address=$(echo $ip_info | awk '{print $2}')

echo "Interface de Rede: $interface"
echo "Endereço IP: $ip_address"

;;
```
Obtendo informações da rede: Utiliza comandos como ip route show, awk, ip addr show, grep e awk para obter informações sobre a interface de rede padrão e seu endereço IP associado.

```
3) 
            echo "Saindo do programa"
            exit
            ;;
```
Sair do programa: A opção 3 encerra a execução do script usando exit.





    
    
      
