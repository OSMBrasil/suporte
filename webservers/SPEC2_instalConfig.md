SPEC2 (passo-a-passo da instalação e configurações)

Conteúdo
* [step1](#step1)
* [step2](#step2)
* [step3](#step3)
* [steps adicionais](#steps-adicionais)

----

Certificar-se de [ter preparado o ambiente conforme SPEC1](SPEC1_requisitosGerais.md).

# step1

Em seguida, a primeira coisa a fazer depois da troca de senha no `ssh`,  clonar o git deste projeto:
```sh
mkdir /opt/gits
cd /opt/gits
git clone https://github.com/OSMBrasil/suporte.git
cd suporte/webservers
pwd
```
o resultado do `pwd`  deverá ser `/opt/gits/suporte/webservers`.

rodar [step1](https://github.com/OSMBrasil/suporte/blob/master/webservers/scripts/step1.sh), ou seja, rodar  `sh scripts/step1.sh`. **Atenção**:
* manter terminal em janela grande para não comprometer telas interativas
* usar espaço para selecionar/deselecionar o pt-BR na primeira tela interativa ... Vão aparecer 3 isntalados C, en e pt-BR, o que já é bom sinal.
* em resposta a "Configurando locales" posicionar o cursor sobre `C.UTF8` na segunda tela, relativa ao ambiente shel, que precisa ser ingles para as mensagens de erro serem mais facilmente rastreáveis em guias e fóruns bons.
* sair do shel com `exit`

Ao voltar com `ssh`,
```sh
cd /tmp/sandbox/guia-config-servers
sh scripts/step1_checks.sh | diff dumps/step1.txt -
```
se o diff acima não devolver nada (significa "arquivos identicos") então perfeito.

# step2
* https://github.com/OSMBrasil/suporte/blob/master/server/scripts/step2.sh
pode pular se for só teste sem segurança.

# step3
Não foi incluso o PostgreSQL por estarmos adotado a versão nova, fora da distribuição LTS... Usar exatamente o que se pede [no site oficial postgresql.org/download/linux/ubuntu](https://www.postgresql.org/download/linux/ubuntu/).

Quanto ao `sh step3.sh` é o mais demorado ... reservar pelo menos 10 minutos e cuidado com o ssh que pode perder conexão.

* https://github.com/OSMBrasil/suporte/blob/master/server/scripts/step3.sh

Responder "Y" ou "yes" para tudo que terminar em "space will be used". Responder senha do MySQL duas vezes.

No final conferir com `sh scripts/step3_checks.sh | diff dumps/step3.txt -` para atestar que foi tudo ok.

# Steps adicionais

## Pegadinhas do PostgreSQL
Pode-se conferir se foi bem instalado com `id postres` (confirma que criou usuário) e `server postgresql status`.

O objetivo principal das instruções que se seguiem é garantir que o root e demais usuários possam sermpre rodar o acesso padrão, `PGPASSWORD=postgres psql -U postgres`.

Conforme [dica](https://stackoverflow.com/a/26735105/287948), pode-se resumir a:

1. Criar o usuário "postgres" com senha "postgres".
2. Mudar a configuração do `pg_hba.conf`.

```
sudo -u postgres psql  # talvez precise aguardar...
CREATE USER postgres WITH PASSWORD 'postgres';
GRANT ALL PRIVILEGES ON DATABASE postgres to postgres;
\q
```
Para o passo 2, editar com  `nano /etc/postgresql/9.6/main/pg_hba.conf` alterarndo a linha com `local   all             postgres                  peer`, o final "peer" por `md5`.

Fazer restar do servidor com `server postgresql restart`.

## Pegadinhas do Docker
A instalação do Docker deve seguir o tutorial [digitalocean.com/how-to-install-and-use-docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04). Como tutorial para iniciantes, ensinando o jargão e a arquitetura,  sugere-se [docker.com/docker-overview](https://docs.docker.com/engine/docker-overview).

Nos testes com `service docker status` e `sudo docker info` a  mensagem "WARNING swap zero" não é problema. Na DigitalOcean usamos SSD no servidor, ver [eaclarecimento sobre SWAP zero em SSD](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04).

Para relatar e discutir erros, use `journalctl -u docker.service > docker-log.txt`, que não trunca as linhas e mostra o log de erros e *warning* mais recente.

## certbot

Use exatamente a instalação indicada em https://certbot.eff.org/#ubuntuxenial-nginx

Criar interativamente os nomes

```
certbot --nginx -d ok.org.br -d ok.org.br
certbot --nginx -d oficial.news -d oficial.news
# ...
```
