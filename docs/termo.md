# Termo de Referência dos Serviços da Equipe de Suporte da OSM-BR

Regras, datasets e tickets de suporte, para a gestão e transparência da Equipe de Suporte da OSM-BR. Repositório oficial.

A equipe de suporte realiza uma série de pequenos atendimentos e pequenos serviços,  que precisam ser registrados de forma transparente, tanto para a prestação de contas, como para tirar dúvidas e permitir o acompanhamento da comunidade.
Neste repositório são registrados os tickets, as horas de suporte consumidas em cada ticket, bem como  as horas de atendimento consumidas com a triagem de solicitações, com e-mails, etc.

Missão e perfil da Equipe de Suporte da OSM-BR:

* _Profissionais credenciados_ e voluntários acolhedores sempre alertas;
* _Garantia de satisfação_;
* _Atendimento rápido_.

As garantias são válidas quando existe *contrato vigente* com profissionais credenciados (aguardando CNPJ da associação).

## Infraestrutura

A palavra *infraestrutura* no Suporte OSM-BR, conforme [infra.md](infra.md), poderá estar se referindo a:

* **infraestrutura de comunicação**
* **infraestrutura básica**
* **infraestrutura de desenvolvimento**

Quando não vier especificado, refere-se ao "caso geral", dado pela união dos casos listados acima.

## Equipe de suporte e papeis

A Equipe de Suporte da OSM-BR requer uma ou mais pessoas autorizadas pelo Corpo Diretivo da OSM-BR a desempenharem diferentes tarefas. Alguns serviços são remunerados outros são voluntários, conforme fixado pelo Regimento Interno. A remuceração é realizada por empreitada, após a comprovação da realização dos serviços. Os comprovantes primários  ficam registrados neste repositório.

Papeis gerais e categoriais de serviços de suporte previstos:

* usuários **administradores** (da infraestrutura): são usuários com acesso completo à interface da infraestrutura, incluindo a capacidade de alterar privilégios de usuário e grupos. Eles são responsáveis por implementar qualquer decisão técnica de acordo com o consenso da comunidade, e podem lidar com situações de emergência, tais como vandalismos.

* usuários **moderadores**: usuários dos ambientes de comunicação, com privilégios menores que os usuários-administradores, para apoiar no acolhimento de novos usuários, resolução de conflitos, e encaminhamento (triagem) de solicitações de suporte.

Os serviços são detalhados em ... (em construção e aguardando CNPJ) ...

## Tarefas com ticket

A princípio todas as tarefas requerem um ticket e sua contabilização como serviço de suporte requer a conclusão dos tickets. As poucas excesões são tratadas na seção "tarefas sem ticket" abaixo. As tarefas com ticket recebem rótulo ([label](https://github.com/OSMBrasil/suporte/labels))  conforme finalidade:

* infra-comunic: solicitação de manutenção da infraestrutura de comunicação.
* infra-basica:  solicitação de manutenção da infraestrutura básica.
* infra-desenv:  solicitação de manutenção da infraestrutura de desenvolvimento.
* vandalismo: aviso de ocorrência de "vandalismo" (ex. *spam* no Talk-BR ou nas git/issues)
* acolhimento: pedido de apoio para acolher ou orientar novos usuários.
* dominio: solicitação de manutenção do DNS ou domínio.
* caixa-mail: ...
* ...

## Tarefas sem ticket

Uma série de atividades, principalmente vinculadas à comunicação, tomam tempo e não podem ser registradas como "solução de um  ticket". Por isso além da planilha de sumarização das horas-ticket (abaixo), a *equipe de suporte* deve prestar contas preenchendo linhas da planilha de [planilha de horas-atendimento](data/horas-atendimento.csv) desvinculada dos tickets, relativas a:

* triagem de e-mails: horas gastas abrindo, lendo e avaliando chamados postados por e-mail ou Talk-BR. <br/>O registro do valor de horas complementa-se pelo registro do número de e-mails/posts de suporte.

* triagem de tickets: quando o próprio usuário redige a sua solicitação, é necessário que a equipe do suporte classifique e  revise. Alguns podem ser classificados como dúvidas, não sendo registrados como tickets de suporte. <br/>Complementa-se pelo registro do número de atendimentos sem demanda por resolução.

**Nenhuma outra forma de atendimento sem ticket é prevista**.

## Tarefas com risco de quebra da segurança

Alguns (um ou dois) membros da equipe de suporte, tipicamente _administradores_, recebem senhas e acesso a partes críticas de sistemas ou infra-estrutura:

* conexão ao "usuário master" das base de dados;
* conexão SSH a um ou mais servidores;
* administração dos e-mails (ex. login administrativo no G-Suite)
* administração dos domínios (ex. login administrativo no RegistroBR);
* administração dos DNS-records (ex. login no site da DigitalOcean);
* administração de meios de pagamento (por exemplo login à Carteira Bitcoin da OSM-BR).

Esses membros precisam ser autorizados pelo Diretor Executivo e/ou pelo Conselho Deliberativo, por se tratar de risco ao patrimônio da OSM-BR e atividade crítica que pode impactar projetos, programas e associados. As regras e condições mínimas de operaço são as seguintes:

1. Responsabilização pelas senhas e IDs secretos que lhe são entregues, cumprindo os procedimentos indicados (por exemplo não registrar esses dados em arquivos do computador, apenas em papel seguro).

2. Responsabilização pela avaliação da rede (ex. Lan Houses não são adequadas a esse tipo de trabalho) e da máquina onde se dará o acesso, cumprindo os procedimentos indicados (ex. usar [pendrive Tails](https://tails.boum.org/) no lugar do sistema usual do computador).


## Gestão dos Tickets

Ver [tickets.md](tickets.md).
