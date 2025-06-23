#!/usr/bin/bash

function tarefa1 () (
    docker build -t minha-app app &&
    local id="$(docker run --name minha-app -d -it -p 3000:3000 minha-app)"
    docker attach "$id"
    if [ \! -z "$id" ]; then docker stop "$id" >/dev/null; fi
    docker rm -f minha-app >/dev/null
)

tarefa1

