#!/bin/bash
#ACESSA A PASTA DO REPOSITORIO
cd /opt/ci-cd/
#INICIA O PROCESSO DE COMMIT E PUSH NO REPOSITORIO VIA CHAVE SSH
git add --all
git commit -m "Atualizando arquivo index.html"
git push avec master
