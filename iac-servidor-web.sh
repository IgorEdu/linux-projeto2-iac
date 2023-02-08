#!/bin/bash

echo"Atualizando servidor..."
apt-get update
apt-get upgrade -y

echo"Instalando o Apache..."
apt-get install apache2 -y

echo"Instalando o unzip..."
apt-get install unzip -y

echo"Baixando aplicação do GitHub e descompactando..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /tmp/linux-site-dio-main
cp -R * /var/www/html

