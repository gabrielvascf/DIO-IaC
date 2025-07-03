#!/bin/bash

# Atualizar o servidor
# Instalar o apache2
# Instalar o unzip
# Baixar o site do exemplo
# Descompactar o site na pasta /var/www/html

echo "Atualizando o servidor..."
sudo apt-get update -y

echo "Instalando o Apache2..."
sudo apt-get install apache2 -y

echo "Instalando o Unzip..."
sudo apt-get install unzip -y

echo "Baixando o site do exemplo..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Descompactando o site na pasta /var/www/html..."
sudo cp -R linux-site-dio-main/* /var/www/html/

echo "Configuração concluída!"
