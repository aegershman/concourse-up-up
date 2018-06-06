#!/bin/bash

set -eu
[ 'true' = "${DEBUG:-}" ] && set -x

chmod +x concourse-up/concourse-up-linux*
concourse_up=$(pwd)/concourse-up/concourse-up-linux*

case "$COMMAND" in
deploy)
	$concourse_up deploy "$PROJECT_NAME"
	;;

destroy)
	$concourse_up destroy "$PROJECT_NAME" <<<"yes"
	;;

info)
	$concourse_up info "$PROJECT_NAME"
	;;

*)
	echo "COMMAND is invalid"
	exit 1
	;;
esac
