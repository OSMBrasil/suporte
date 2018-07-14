echo '--- SEGUIR O GUIA para criar usuários ---'
echo ' ... falta criar usuário e logar com usuário'
printf " adduser newUserName\n exit\n ssh newUserName@server\n"
echo '   PS: conforme o caso colocar user no  /etc/sudoers'
printf " gpasswd -a newUserName sudo\n"
echo '--- ... depois logar como usuário ---'
