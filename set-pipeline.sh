#!/bin/bash

case "$1" in
*)
	fly -t local set-pipeline \
		-p take-flight-aws \
		-c pipeline.yml \
		-l params.yml \
		-l .env.yml \
		"$@"
	;;
esac
