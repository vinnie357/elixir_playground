#!/bin/bash
function stoplocaldocker {
name=${1:-'postgres'}
docker stop $name && docker rm $name
}
