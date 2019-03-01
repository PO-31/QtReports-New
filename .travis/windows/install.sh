#!/bin/bash

cd "$HOME/packages"
powershell -Command "& {Expand-Archive qtbase-build-win32.zip -DestinationPath $HOME -Force}"
if [[ $? -ne 0 ]]; then
	echo "Error in qtbase extraction"
	exit 1
fi

export PATH=$HOME/qtbase-build/bin:$PATH

cd "$TRAVIS_BUILD_DIR"