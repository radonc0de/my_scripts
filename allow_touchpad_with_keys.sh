#!/bin/bash

DEV=$(xinput list | grep Touchpad | awk '{print substr($6, 4, length($6))}')
PROP=$(xinput list-props $DEV | grep 'Disable While Typing Enabled (' | awk '{print substr($6, 2, length($6) - 3)}')
xinput set-prop $DEV $PROP 0

