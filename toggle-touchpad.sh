#!/bin/bash

# Get the current status of the touchpad send-events setting
current_status=$(gsettings get org.gnome.desktop.peripherals.touchpad send-events)

# Determine the new status and update the setting accordingly
if [ "$current_status" = "'enabled'" ]; then
    gsettings set org.gnome.desktop.peripherals.touchpad send-events 'disabled'
    echo "Touchpad send-events disabled."
else
    gsettings set org.gnome.desktop.peripherals.touchpad send-events 'enabled'
    echo "Touchpad send-events enabled."
fi
