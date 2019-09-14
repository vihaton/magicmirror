#!/bin/bash

# cd ~/projects/magicmirror

source /home/pi/projects/magicmirror/venv/bin/activate

export FLASK_APP=hello.py

flask run &

# python3 hello.py
