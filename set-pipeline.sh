#!/usr/bin/env bash

case "$1" in
*)
	fly -t conc-local set-pipeline \
		-p concourse-up \
		-c pipeline.yml \
		-l params.yml \
		-l .env.yml \
		"$@"
	;;
esac
