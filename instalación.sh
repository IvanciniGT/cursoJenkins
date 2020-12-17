# Actualización de los paquetes para instalar en el sistema
sudo apt-get update
# Instalación de paquetes gcc make y perl
sudo apt-get install gcc make perl
# Reinicio
systemctl rebot -i

# Alta de las llaves del repositorio de jenkins
cd /tmp && wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# Alta del repositorio de jenkins
echo 'deb https://pkg.jenkins.io/debian-stable binary/' | sudo tee -a /etc/apt/sources.list.d/jenkins.list

# Actualización del paquete de instalacion de jenkins
sudo apt update
# Eliminar uns instalacion anterior
sudo apt-get purge jenkins
# Instalar jenkins
sudo apt install jenkins
 
# Parar jenkins
sudo systemctl stop jenkins.service
# Iniciar jenkins
sudo systemctl start jenkins.service
# Indica el estado de jenkins
sudo systemctl status jenkins.service
# Reinicia jenkins
sudo systemctl restart jenkins.service
# Inicia jenkins con el sistema
sudo systemctl enable jenkins.service

# Acceso a la clave de instalacion
sudo cat /var/lib/jenkins/secrets/initialAdminPassword