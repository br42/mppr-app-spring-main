#!/usr/bin/bash

function tarefa2 () (
    docker network rm -f minha-rede >/dev/null
    docker network create minha-rede >/dev/null
    local id1="$(docker run -d --name meu-banco --network minha-rede mongo)"
    docker build -t minha-app app &&
    local id2="$(docker run -d --name minha-app -it -p 3000:3000 --network minha-rede -e MONGO_URL=mongodb://meu-banco:27017 minha-app)"
    docker attach "${id2}"
    if [ \! -z "{$id1}" ]; then docker stop "${id1}" >/dev/null; fi
    if [ \! -z "{$id2}" ]; then docker stop "${id2}" >/dev/null; fi
    docker container rm -f meu-banco >/dev/null
    docker container rm -f minha-app >/dev/null
    docker network rm -f minha-rede >/dev/null
)

tarefa2

