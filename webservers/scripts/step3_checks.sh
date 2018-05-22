echo '--- VERSOES ---'

psql --version
php --version
python --version
python3 --version
git --version

sudo ufw app list

echo '--- ETC ---'
php --info | grep -v REQUEST_TIME

echo '--- SERVICES ---'

service nginx status    | grep -E -i "nginx.service|Drop-In"
service mysql status      | grep mysql.service
service postgresql status | grep postgresql.service
service --status-all
pip --version

mkdocs --version # miniguias
