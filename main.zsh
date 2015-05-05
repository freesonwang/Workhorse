#!/bin/zsh

# Check for the existence of the main directory
if [[ -z $WORKHORSE_TASKS_DIR ]] then
	default_workhorse_tasks_dir="$HOME/workhorse"
	echo "Setting default Workhorse main dir to '$default_workhorse_tasks_dir'..."
	export WORKHORSE_TASKS_DIR=$default_workhorse_tasks_dir;
fi

if [[ -n $1 ]] then
	WORKHORSE_TASK_NAME=$1
	echo "Creating Workhorse for '$WORKHORSE_TASK_NAME'..."
	this_dir=${0%/*}

	# Make the task directory
	WORKHORSE_TASK_DIR="$WORKHORSE_TASKS_DIR/$WORKHORSE_TASK_NAME"
	if [[ ! -d $WORKHORSE_TASK_DIR ]] then
		echo "Creating Workhorse for '$WORKHORSE_TASK_NAME' at '$WORKHORSE_TASK_DIR'..."
		mkdir -p $WORKHORSE_TASK_DIR
	fi

	# Setup the task script
	WORKHORSE_TASK_SCRIPT_PATH="$WORKHORSE_TASK_DIR/workhorse.zsh"
	if [[ ! -f $WORKHORSE_TASK_SCRIPT_PATH ]] then
		echo "Creating Workhorse task script at '$WORKHORSE_TASK_SCRIPT_PATH'..."
		cp $this_dir/workhorse_template.zsh $WORKHORSE_TASK_SCRIPT_PATH
	fi

	# Connect up the library and do the final aliasing
	WORKHORSE_LIBRARY="$this_dir/library"
	alias workhorse="source \"$this_dir/entry.zsh\""
	echo "Task directory at '$WORKHORSE_TASK_DIR'"
	echo "Workhorse set to '$WORKHORSE_TASK_NAME'!"
else
	echo "Error: You need to specify a name for the task you'd like to work on."
fi

# Workhorse - a way to quickly work on something
# (c) Copyright Freeson Wang <freeson.wang@yahoo.com>