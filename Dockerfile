#ENVIRONNEMENT
FROM debian:buster

#TELECHARGEMENT PAQUETS
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install openssl
RUN apt-get install -y nginx
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php-mbstring
RUN apt-get install -y mariadb-server mariadb-client

#IMPORT FICHIERS
COPY srcs/launcher.sh ./
COPY srcs/default ./
COPY srcs/wp-config.php ./

#LANCEMENT
CMD bash /launcher.sh
