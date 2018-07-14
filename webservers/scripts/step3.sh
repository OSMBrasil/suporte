if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update

#NGINX
apt install nginx

#Fornecer permissão /www
# ver equiv. chown -R www-data:www-data /var/www
#            chmod -R g+rw /var/www

#PHP7.2 é automatico no ubuntu, basta dizer "php"
apt install php  php-pgsql php-imap php-mcryp php-pear php-fpm php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml

#Python3 (default!)

#postgreSQL .. The v10 is running with UBUNTU 18 LST
apt install postgresql-10 postgis # or postgis-2.3
# old apt install postgresql postgresql-contrib  postgis

apt install python-pip     # uso geral
pip install --upgrade pip

pip install -U mkdocs  # para projeto Miniguias, https://github.com/okfn-brasil/miniguias
