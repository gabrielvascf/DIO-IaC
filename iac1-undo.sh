#!/bin/bash
# script para desfazer as alterações feitas pelo iac1.sh
echo "Iniciando a remoção de diretórios..."
rm -rf /adm
rm -rf /publico
rm -rf /ven
rm -rf /sec

echo "Removendo usuários..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Removendo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Remoção concluída com sucesso!"
