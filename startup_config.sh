#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Carlos123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Maria123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Joao123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Debora123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Sebastiana123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Roberto123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Josefina123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Amanda123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Rogerio123) -G GRP_SEC


chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

chmod 777 /publico