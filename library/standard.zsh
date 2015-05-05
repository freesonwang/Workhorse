#!/bin/zsh

case $1 in
("info")
	echo "Task directory at '$WORKHORSE_TASK_DIR'"
	echo "Script at '$WORKHORSE_TASK_SCRIPT_PATH'"
	;;
("cd_task")
	cd $WORKHORSE_TASK_DIR
	;;
("edit_workhorse")
	if [[ -n $EDITOR ]] then
		$EDITOR $WORKHORSE_TASK_SCRIPT_PATH
	else
		vim $WORKHORSE_TASK_SCRIPT_PATH
	fi
	;;
esac

# Workhorse - a way to quickly work on something
# (c) Copyright Freeson Wang <freeson.wang@yahoo.com>