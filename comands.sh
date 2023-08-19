#!/bin/bash
echo "--------------(remover itens criados anteriormente)--------------"

cd /
sudo userdel -r carlos
sudo userdel -r maria
sudo userdel -r joao
sudo userdel -r debora
sudo userdel -r sebastiana
sudo userdel -r roberto
sudo userdel -r josefina
sudo userdel -r amanda
sudo userdel -r rogerio

sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC

sudo rm -r /publico /adm /ven /sec

echo "--------------(criar diretórios)--------------"

sudo mkdir /publico /adm /ven /sec

echo "--------------(criar grupos)--------------"

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC 

echo "--------------(GRP_ADM)--------------"

sudo useradd carlos -c "Carlos silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
sudo useradd maria -c "Maria Oliveira" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
sudo useradd joao -c "João Pereira" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM

sudo chmod 777 /publico
sudo chown root:GRP_ADM /adm
sudo chmod 770 /adm

echo "--------------(GRP_VEN)--------------"

sudo useradd debora -c "Debora Vasconcelos" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana Martins" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
sudo useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN

sudo chown root:GRP_VEN /ven
sudo chmod 770 /ven

echo "--------------(GRP_SEC)--------------"

sudo useradd josefina -c "Josefina Vasconcelos" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
sudo useradd amanda -c "Amanda Reis" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
sudo useradd rogerio -c "Rogerio Assis" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC

sudo chown root:GRP_SEC /sec
sudo chmod 770 /sec

echo "--------------(GRP_SEC)--------------"
cat /etc/group
cat /etc/passwd
