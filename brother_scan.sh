#!/bin/bash

SCANNAME=$(date +%Y%m%d%H%M%S)
scanimage --format=png --output-file $HOME/Documents/Scans/$SCANNAME.png
firefox /home/keithl/Documents/Scans/$SCANNAME.png
