Workhorse 
---------

## What is Workhorse?

Workhorse is a zsh script designed to make aliasing easy. Basically, it allows you to do this...

	% work_on FoobarProject
	Creating Workhorse for 'FoobarProject'...
	Creating Workhorse for 'FoobarProject' at '/Users/freeson/Google Drive/Sandbox/FoobarProject'...
	Creating Workhorse task script at '/Users/freeson/Google Drive/Sandbox/FoobarProject/workhorse.zsh'...
	Task directory at '/Users/freeson/Google Drive/Sandbox/FoobarProject'
	Workhorse set to 'FoobarProject'!

	% workhorse hello
	Hello, world!

With the command `workhorse` you now have aliased a bunch of shell snippets. `work_on` sets the context of which snippets to alias.

## How does it work

Where is the `hello` code that prints _Hello, world!_ defined? It's in a `workhorse.zsh` script in the **FoobarProject** task directory. So if we pop open the file `FoobarProject/workhorse.zsh` you'll see...

	if [[ $1 == "hello" ]] then
		echo "Hello, world!"
	fi

	if [[ $1 == "git_checkpoint" ]] then
		# I defined this myself!
		echo "About to checkpoint..."
		git status
		git commit -a -m "This is an auto checkpoint"
		echo "Done commiting!"
	fi

Thus, the result is quick aliasing of little snippets of shell code. It saves you a bunch of terminal commands!

## Installation and Setup 

It is currently still in development. To use it, alias the phrase 'work_on' to where the workhorse script is located.

	alias work_on="source \"~/.workhorse/workhorse.zsh\""

You can choose where to store your tasks with

	export WORKHORSE_TASKS_DIR="$GOOGLE_DRIVE_DIR/Sandbox"
