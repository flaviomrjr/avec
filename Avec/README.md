AVEC - CI/CD
==========================

BLUEGREEN DEPLOYMENT
--------------------

**Passo 1**

Acesse a url do Rundeck em: http://54.207.8.149:4440/user/login

**Passo 2**

Acesse o Rundeck com os dados de login enviados por e-mail

**Passo 3**

Clique no projeto **"AVEC"** e em seguida clique no job **"AVEC DEVOPS TESTE - BLUEGREEN DEPLOYMENT"**

**Passo 4**

Digite o nome do candidato no campo **"candidatoname"** e clique no botão **"Run Job Now"**

**Passo 5**

Após o job ser finalizado com sucesso, será acionado uma pipeline no Jenkins via webhook responsavel pelo update do servidor web.

Acesse a URL: http://54.207.8.149/index.html para verificar se a alteração foi realizada.

_FIM_

DIAGRAMA CI/CD
--------------

Verifique como foi configurado o processo de CI/CD no diagrama:

![IMAGEM GIT](https://github.com/flaviomrjr/challenges/blob/master/DevOps/BlueGreen/DIAGRAMA-BLUEGREEN.jpg?raw=true)
