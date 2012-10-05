#!/bin/bash

# useful vars
fixpath="$( cd "$( dirname "$0" )" && pwd )"
fixname="elantech-clickpad-fix"
bashfix="$fixpath/$fixname.sh"
deskfix="$fixpath/$fixname.desktop"

# installation
sudo cp "$bashfix" "/usr/bin/"
sudo chmod +x "$bashfix"
sudo cp "$deskfix" "/etc/xdg/autostart/"