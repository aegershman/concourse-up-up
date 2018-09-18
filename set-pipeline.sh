#!/usr/bin/env bash

case "$1" in
hj)
	fly -t conc-local hijack --job=concourse-up/concourse-up-deploy
	;;

*)
	fly -t conc-local set-pipeline \
		-p concourse-up \
		-c pipeline.yml \
		-l params.yml \
		-l .env.yml \
		"$@"
	;;
esac
