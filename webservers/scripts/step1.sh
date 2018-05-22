## BRASILEIRO!
# revisar script conforme 
#       https://askubuntu.com/questions/142812/temporarily-change-language-for-terminal-messages-warnings-errors
#       https://askubuntu.com/a/741834/439867
#       ...

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo '--- LOCALE do próprio shell inclusive, primeira tela * segunda tela C.UTF8 ---'
# git
sudo apt-get install git

export LANGUAGE=pt_BR.UTF-8
export LANG=pt_BR.UTF-8
locale-gen pt_BR.UTF-8
update-locale LANG=pt_BR.UTF-8
dpkg-reconfigure locales

export LC_ALL=pt_BR.UTF-8
export LC_MESSAGES="C.UTF-8"
echo 'export LC_MESSAGES="C.UTF-8"' >> ~/.bashrc  # and other ssh users!

apt update
apt upgrade

echo '--- NOTA: se for DigitalOcean, rodar agora o sh de atualizacao. ---'
echo '--- CUIDADO: rode uma só vez esse sh devido, e lembre-se do echo nos outros usuários. ---'

echo '--- AGORA SAIR (exit) e depois check com dump ---'
