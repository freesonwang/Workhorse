#!/bin/zsh

for lib_file ($this_dir/library/*) {
	source $lib_file
}

source $WORKHORSE_TASK_SCRIPT_PATH

# Workhorse - a way to quickly work on something
# (c) Copyright Freeson Wang <freeson.wang@yahoo.com>