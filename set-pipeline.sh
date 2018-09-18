#!/usr/bin/env bash

case "$1" in
conc-local-up | up) docker-compose up --detach ;;
conc-local-down | down) docker-compose down --rmi all --remove-orphans ;;
conc-local-login | login) fly --target conc-local login --concourse-url http://127.0.0.1:8080 ;;
conc-local-sync | sync) fly --target conc-local sync ;;

*)
	fly -t conc-local set-pipeline \
		-p concourse-up \
		-c pipeline.yml \
		-l params.yml \
		-l creds.yml \
		"$@"
	;;
esac
