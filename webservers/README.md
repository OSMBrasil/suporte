# Servidores Web da OSM-BR

Preparo dos servidores e da API Gateway de cada domínio.

# ESPECIFICAÇÕES #

* **SPEC1** - [Requisitos gerais](SPEC1_requisitosGerais.md)

* **SPEC2** - [Instalação e configuração](SPEC2_instalConfig.md)

* **SPEC3** - Backups

* **SPEC4** - Testes de restauro dos backups

* **SPEC5** - Referências normativas e de apoio

-----

# SCRIPTS E TESTES
Cada uma das especificações, principalmente SPEC2, pode oferecer um "resumo" em forma de script: para satisfazer a SPEC basta rodar  o script no terminal.

Os [scripts](scripts) resumem e facilitam o refazer do passo-a-passo descrito pelas especificações. Com `_check.sh` compare-se com o feito anteriormente.

```
sh step1.sh
# se tudo ok...
sh step1_check.sh | diff step1_check.dump -
```
Exemplo: quando rodamos no *shell* o [step3.sh](scripts/step3.sh), ele roda tudo o que é necessário para o "[step-3](SPEC2_instalConfig.md#step3)"; quando rodamos o [step3_check.sh](scripts/step3_check.sh), ele roda as verificações e mensagens que atestam que está tudo no lugar e rodando... Isso fica gravado em [dumps/step3.txt](dumps/step3.txt) como referência (o dia que homologamos num  *Droplet de teste*): assim quando rodar `sh scripts/step3_check.sh | diff dumps/step3.txt -` o estado do *Droplet corrente* será comparado com o estado homologado, se tudo ok não retorna nenhuma diferença.

------

# Outros elementos
* Termos de uso dos e-mails, etc. decidir onde serão mantidos.
* ...
