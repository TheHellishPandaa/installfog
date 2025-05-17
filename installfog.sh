#!/bin/bash

# Autor: Jaime Galvez Martinez
# Descripción: Instalador automático de FOG Project

set -e

echo "=== ACTUALIZANDO EL SISTEMA ==="
sudo apt update && sudo apt upgrade -y

echo "=== INSTALANDO DEPENDENCIAS NECESARIAS ==="
sudo apt install -y git curl apache2 php php-cli php-fpm php-mysql mariadb-server \
php-mbstring php-xml php-curl php-bcmath php-gd php-intl php-zip php-json \
dnsmasq nfs-kernel-server net-tools build-essential

echo "=== CLONANDO FOG PROJECT ==="
cd /opt
sudo git clone https://github.com/FOGProject/fogproject.git
cd fogproject/bin

echo "=== INICIANDO INSTALADOR DE FOG ==="
# Lanza el instalador interactivo. Puedes forzar opciones automáticas si deseas.
sudo ./installfog.sh

echo "========================================="
echo " Instalación iniciada. Sigue los pasos "
echo " interactivos del instalador de FOG. "
echo " Luego accede vía navegador: "
echo "    http://<IP_DEL_SERVIDOR>/fog "
echo " para completar la instalación."
echo "========================================="
