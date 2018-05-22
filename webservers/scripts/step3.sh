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

#PHP7, precisa?
apt install php7.0 php7.0-mysql php7.0-mbstring php7.0-imap php7.0-mcrypt

#Python3 (default??)
apt install python3


#postgreSQL .. The v9.6 have many problems in UBUNTU 16 LST
# apt install postgresql-9.5 postgresql-contrib-9.5 postgis-2.2
# ja instalei v6
#  apt install postgresql postgresql-contrib  postgis

apt install python-pip     # uso geral
pip install --upgrade pip

pip install -U mkdocs  # para projeto Miniguias, https://github.com/okfn-brasil/miniguias
