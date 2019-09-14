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

### autostart
changed `/etc/xdg/lxsession/LXDE-pi/autostart` to
```
#@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
#@xscreensaver -no-splash
#point-rpi

#additions
@xset s off
@xset -dpms
@xset s noblank
@chromium-browser --kiosk --incognito http://127.0.0.1:5000/
```

### launch flask
changed `/etc/rc.local` to
```
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# Print the IP address
_IP=$(hostname -I) || true
if [ "$_IP" ]; then
  printf "My IP address is %s\n" "$_IP"
fi

/home/pi/projects/magicmirror/start.sh &

exit 0
```

## TODO
1. Automated first use configuration 