#!/usr/bin/env bash

chmod +x concourse-up/concourse-up-linux*
concourse_up=$(pwd)/concourse-up/concourse-up-linux*

case "$COMMAND" in
deploy) $concourse_up deploy "$PROJECT_NAME" ;;
destroy) $concourse_up destroy "$PROJECT_NAME" <<<"yes" ;;
info) $concourse_up info "$PROJECT_NAME" ;;

*)
	echo "command $COMMAND is unknown"
	exit 1
	;;
esac
