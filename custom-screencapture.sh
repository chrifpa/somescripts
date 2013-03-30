#!/bin/bash

OPT=""

if [ "$1" == "-s" ]; then
	OPT=""
else
	OPT="-window root"
fi

FILENAME=~/Dropbox/Public/Screenshots/Screenshot_`date +%Y-%m-%d-%H:%M`.png

import $OPT $FILENAME

URL=`python /usr/bin/dropbox.py puburl $FILENAME`

echo $URL | tr -d '\n' | xclip -selection clipboard
