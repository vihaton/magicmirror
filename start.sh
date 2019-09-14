#!/bin/bash

# cd ~/projects/magicmirror

# source venv/bin/activate

# export FLASK_APP=hello.py

# flask run >> log.txt 2>&1 &

python3 /home/pi/projects/magicmirror/hello.py >> log.txt 2>&1 &

exit 0