#!/bin/bash

cd ~/projects/magicmirror

source venv/bin/activate

export FLASK_APP=hello.py

flask run >> log.txt 2>&1 &

# python3 hello.py
