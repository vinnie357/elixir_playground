# elixir_playground

elixir and Phoenix LiveView playground

## meant for github codespaces or vscode devcontainers based on ubuntu.

## setup

```bash
# make .env
cp .env.example .env
# edit .env
vi .env
# add helpers
. init.sh
# export envs
set_env
# start local postgres if wanted requires docker
localpostgresdocker
# bootstrap a phx app
myapp='hello'
mix phx.new $myapp
cd $myapp
# default uses local postgress db
# NOTE:requires db is started and reachable
mix ecto.create
# start interactive
iex -S mix phx.server
# start non interactive
#mix phx.server
```
