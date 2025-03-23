#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd peter -c "Peter Python" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd john -c "John Java" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd cintia -c "Cintia C" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM

useradd rachel -c "Rachel Ruby" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd paul -c "Paul Pascal" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd garry -c "Garry Go" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN

useradd hannah -c "Hannah Haskell" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd victor -c "Victor VB" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd richard -c "Richard Rust" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Specifying directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finished!"
