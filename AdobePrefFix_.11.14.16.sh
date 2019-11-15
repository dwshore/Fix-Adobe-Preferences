#!/bin/bash
sudo kill $(ps -ef | grep "[A]dobe" | awk '{print $2}')
sudo kill $(ps -ef | grep "[C]ore Sync Helper" | awk '{print $2}')
sudo perl -pi -w -e 's/false/true/g' /Library/Application\ Support/Adobe/OOBE/Configs/ServiceConfig.xml