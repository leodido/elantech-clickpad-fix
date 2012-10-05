ETPS/2 Elantech Clickpad Fix
============================

It enables the ETPS/2 Elantech Clickpad on Ubuntu 12.04 and fixes the behaviour of right and middle soft buttons areas.

Bugs fixed
----------
* Device recognized as touchpad rather than clickpad
* No right click
* No middle click
* No drag selection (and drag & drop)

Install
-------
First thing: download this script to your desktop (or adapt the installation commands below).

Then open a terminal and digit:
	sudo cp /home/<user>/Desktop/elantech-ckickpad-fix.sh /usr/bin/
	sudo chmod +x /usr/bin/elantech-ckickpad-fix.sh

...

Notes
-----
The two-finger right-click will continue to work.

Limits / Future work
--------------------
This script works only with ETPS/2 Elantech Clickpad, to make it works with other clickpad devices you have to substitute the value of the `devicename` variable in the script with the exact name of your device.
To find out the exact name of the device you have to execute in the terminal the xinput command.

Greeetings
----------
This script is based on those published by [The Orange Notebook](http://www.theorangenotebook.com/2012/02/call-for-testing-clickpad.html) blog. Thank you!
