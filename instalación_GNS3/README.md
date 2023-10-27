# Instalación de GNS3 y Docker en Ubuntu

Este script de shell automatiza el proceso de instalación de GNS3 y Docker en un sistema Ubuntu. El script realiza las siguientes acciones:

1. **Instalación de GNS3 GUI y GNS3 Server**: Agrega el repositorio oficial de GNS3, actualiza la lista de paquetes y luego instala GNS3 GUI y GNS3 Server.

2. **Añadir arquitectura i386 y actualizar**: Añade la arquitectura i386 y actualiza la lista de paquetes.

3. **Instalación de GNS3 IOU**: Instala GNS3 IOU, que es un componente adicional para GNS3.

4. **Desinstalación de Docker**: Desinstala cualquier versión previa de Docker en el sistema.

5. **Instalación de dependencias para Docker**: Instala las dependencias necesarias para Docker, como `software-properties-common`, `apt-transport-https`, y `ca-certificates`.

6. **Agrega clave GPG de Docker**: Agrega la clave GPG de Docker al sistema para verificar la autenticidad de los paquetes Docker.

7. **Agrega repositorio de Docker**: Agrega el repositorio oficial de Docker para Ubuntu.

8. **Instalación de Docker**: Instala Docker Community Edition (CE) en el sistema.

9. **Agrega el usuario actual a grupos**: Agrega el usuario actual a grupos importantes, como `ubridge`, `libvirt`, `kvm`, `wireshark`, y `docker`, para permitir el acceso a recursos específicos.

10. **Verificación de la pertenencia a grupos**: Verifica si el usuario actual ha sido agregado correctamente a los grupos mencionados.

Después de ejecutar este script, se recomienda reiniciar el sistema para completar el proceso de instalación.

**Nota**: Asegúrate de comprender las acciones realizadas por el script antes de ejecutarlo y de que se está ejecutando en un sistema Ubuntu compatible.

## Uso

1. Abre una terminal en tu sistema Ubuntu.

2. Descarga el script o crea un nuevo archivo de texto y cópialo en su interior.

3. Guarda el archivo con una extensión `.sh` (por ejemplo, `install_gns3.sh`).

4. Ejecuta el script con permisos de superusuario:
   
chmod +x install_gns3.sh

5. Ejecuta el script con permisos de superusuario:
sudo ./install_gns3.sh

6. Sigue las instrucciones del script y espera a que se complete el proceso.

7. Después de completar la instalación, reinicia tu sistema.

## Contribución
Si encuentras errores o mejoras para este script, no dudes en contribuir. ¡Hagamos que la instalación de GNS3 y Docker en Ubuntu sea más sencilla para todos!

## Recursos adicionales

- Consulta la [documentación oficial de GNS3 para instalación en Linux](https://docs.gns3.com/docs/getting-started/installation/linux/) para obtener información detallada sobre la instalación en diferentes distribuciones de Linux.

Esta documentación oficial proporciona instrucciones específicas para diferentes sistemas Linux y puede servir como referencia adicional para la instalación y configuración de GNS3.

## Licencia
Este proyecto está bajo la [Licencia MIT](https://opensource.org/licenses/MIT). Consulta el [texto completo de la Licencia MIT](https://opensource.org/licenses/MIT) en el sitio web de OSI para obtener más detalles.

## Contacto

- Ing. Alex Alberto Varela Quirós
- correo: alex.varela@ucr.ac.cr
- tel: +50685525005
- GitHub: [Repositorio](https://github.com/ingalexvarela/GNS3-Linux)

[![iconopeque.jpg](https://i.postimg.cc/hvtdRL0p/iconopeque.jpg)](https://postimg.cc/k6L4xtzb)


