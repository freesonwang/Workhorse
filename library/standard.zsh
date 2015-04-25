#!/bin/zsh

if [[ $1 == "info" ]] then
	echo "Task directory at '$WORKHORSE_TASK_DIR'"
	echo "Script at '$WORKHORSE_TASK_SCRIPT_PATH'"
fi

if [[ $1 == "cd_task" ]] then
	cd $WORKHORSE_TASK_DIR
fi

if [[ $1 == "edit_workhorse" ]] then
	if [[ -n $EDITOR ]] then
		$EDITOR $WORKHORSE_TASK_SCRIPT_PATH
	else
		vim $WORKHORSE_TASK_SCRIPT_PATH
	fi
fi

# Workhorse - a way to quickly work on something
# (c) Copyright Freeson Wang <freeson.wang@yahoo.com>