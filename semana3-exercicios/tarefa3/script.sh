#!/usr/bin/bash

function tarefa3 () (
    cd app
    docker-compose up
    docker-compose down
    cd ..
)

tarefa3

