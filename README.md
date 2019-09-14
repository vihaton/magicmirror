# magicmirror

[Project follows initially this recipe](https://www.instructables.com/id/How-to-Make-a-Magic-Mirror/)

## Init

Device: Raspberry Pi 3 B+
Operating System: Raspian 2019-07-10-raspbian-buster-full.img

1. Create virtual env and install flask
[Flask documentation](https://flask.palletsprojects.com/en/1.0.x/installation/#installation)
* `python3 -m venv venv` in project root
* `source venv/bin/activate`
* `pip install Flask`
2. Run flask
* `export FLASK_APP=hello.py` to add the main file to your path, so Flask finds your "server root"
* `flask run`

## Configure SSH  
https://www.raspberrypi.org/documentation/remote-access/ssh/

## TODO
1. Automated first use configuration 