#!/bin/bash

cd ~/projects/magicmirror

source venv/bin/activate

export FLASK_APP=hello.py

flask run