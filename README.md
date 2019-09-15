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

## Configures made

### Launch fullscreen chromium on start
changed `/etc/xdg/lxsession/LXDE-pi/autostart` to
```
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
#@xscreensaver -no-splash
#point-rpi

#additions
@unclutter -idle 0
@xset s off
@xset -dpms
@xset s noblank
@chromium-browser --kiosk --incognito http://localhost:5000/
```

### launch flask on start
added this line to `/etc/rc.local`, before the `exit 0`
```
/home/pi/projects/magicmirror/start.sh &

exit 0
```

### hide cursor
[These instructions](https://jackbarber.co.uk/blog/2017-02-16-hide-raspberry-pi-mouse-cursor-in-raspbian-kiosk)
told to add `@unclutter -idle 0` to the autostart file.

## TODO
1. Automated first use configuration 