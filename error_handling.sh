#!/bin/bash

## mostly errors are handled through if and then conditions


create_file() {
	mkdir demo
}

if ! create_file; then
	 echo "the code is exited as file already exists"
	 exit 1
fi

echo "file created successfully"
