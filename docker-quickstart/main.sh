#!/bin/bash

set -eo pipefail

case "$1" in
up)
	docker-compose up --detach
	;;

login)
	fly --target local login --concourse-url http://127.0.0.1:8080
	fly --target local sync
	;;

down)
	docker-compose down --rmi all --remove-orphans
	;;

*)
	echo "Usage: ./main.sh <up | login | down>"
	exit 1
	;;
esac
