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
First thing: download this script.

Now we can proceed to the installation of the fix.

Assuming that you've downloaded this repository in the `Download` folder, open a terminal and digit:

`sudo chmod +x ~/Download/elantech-clickpad-fix/install.sh`

`cd ~/Download/elantech-clickpad-fix/`

Now we can install the fix:

`./install`

Alternatively, you can give execution permissions to `install.sh` right clicking it. So you can execute it simply double clicking it and selecting the execution option.

Reboot the system.

Notes
-----
The two-finger right-click will continue to work.

Once the installation has been done you can delete the downloaded folder.

Limits / Future work
--------------------
This script works only with ETPS/2 Elantech Clickpad, to make it works with other clickpad devices you have to substitute the value of the `devicename` variable in the script with the exact name of your device. To find out the exact name of the device you have to execute in the terminal the xinput command.

Greetings
----------
This script is based on those published by [The Orange Notebook](http://www.theorangenotebook.com/2012/02/call-for-testing-clickpad.html) blog. Thank you!
