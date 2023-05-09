#!/bin/bash

echo "Criar diretórios..."

mkdir /publico
mkdir /adm
mkdir /devfront
mkdir /devback
mkdir /devops

echo "Criar grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_DEV_FRONT
groupadd GRP_DEV_BACK
groupadd GRP_DEVOPS

echo "Criar usuários..."

useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd railane -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd johann -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM

useradd benjamin -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEV_FRONT
useradd barbara -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEV_FRONT
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEV_FRONT

useradd jessica -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEV_BACK
useradd raquel -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEV_BACK
useradd aline -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEV_BACK

useradd whinderson -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEVOPS
useradd popo -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEVOPS
useradd viga -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_DEVOPS

echo "Especificar permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_DEV_FRONT /devfront
chown root:GRP_DEV_BACK /devback
chown root:GRP_DEVOPS /devops

chmod 777 /adm
chmod 770 /devfront
chmod 770 /devback
chmod 770 /devops
chmod 770 /publico

echo "Missão Cumprida....."

