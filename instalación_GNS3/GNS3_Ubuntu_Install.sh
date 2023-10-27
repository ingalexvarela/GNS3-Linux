#!/bin/bash

echo "Instalando GNS3 en su computador, con distribución Ubuntu"

echo "Instalando GNS3 GUI y GNS3 Server..."
# Instalar GNS3 GUI y GNS3 Server
sudo add-apt-repository ppa:gns3/ppa
sudo apt update
sudo apt install gns3-gui gns3-server
echo "GNS3 GUI y GNS3 Server han sido instalados."

echo "Añadiendo arquitectura i386 y actualizando..."
# Añadir arquitectura i386 y actualizar
sudo dpkg --add-architecture i386
sudo apt update

echo "Instalando GNS3 IOU..."
# Instalar GNS3 IOU
sudo apt install gns3-iou
echo "GNS3 IOU ha sido instalado."

echo "Desinstalando Docker..."
# Desinstalar Docker
sudo apt remove docker docker-engine docker.io
sudo snap remove docker

echo "Instalando dependencias para Docker..."
# Instalar dependencias para Docker
sudo apt-get install software-properties-common
sudo apt-get install apt-transport-https ca-certificates curl

echo "Agregando clave GPG de Docker..."
# Agregar clave GPG de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Agregando repositorio de Docker..."
# Agregar repositorio de Docker
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update

echo "Instalando Docker..."
# Instalar Docker
sudo apt install docker-ce
echo "Docker ha sido instalado."

echo "Agregando el usuario actual a grupos..."
# Agregar el usuario actual a grupos
sudo usermod -aG ubridge,libvirt,kvm,wireshark,docker $(whoami)

echo "Verificando la pertenencia a grupos..."
# Verificar la pertenencia a grupos
cat /etc/group | egrep ubridge
cat /etc/group | egrep libvirt
cat /etc/group | egrep kvm
cat /etc/group | egrep wireshark
cat /etc/group | egrep docker

echo "Proceso de instalación completo. Reiniciar sistema para completar proceso"