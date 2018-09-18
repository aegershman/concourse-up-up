#!/usr/bin/env bash

case "$1" in
up)
	docker-compose up --detach
	;;

login)
	fly --target conc-local login --concourse-url http://127.0.0.1:8080
	fly --target conc-local sync
	;;

down)
	docker-compose down --rmi all --remove-orphans
	;;

*)
	echo "Usage: ./main.sh <up | login | down>"
	exit 1
	;;
esac
