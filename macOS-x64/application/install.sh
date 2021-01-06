#! /bin/bash
# Basic install script assumes wails and golang are properly installed 
# and that all dependencies are already met...given that this should
# work on most distros.   If you use arch it is already in the user
# repos.
wails build -f

PRAYERS=/opt/chrisfair/latin-catholic-prayers/Prayers
HELP_FILES=/opt/chrisfair/latin-catholic-prayers/HelpFiles
SOUND_FILES=/opt/chrisfair/latin-catholic-prayers/Sounds


if [ ! -d "${PRAYERS}" ]; then 
	sudo mkdir -p ${PRAYERS}
fi

if [ ! -d "${HELP_FILES}" ]; then 
	sudo mkdir -p ${HELP_FILES}
fi

if [ ! -d "${SOUND_FILES}" ]; then 
	sudo mkdir -p ${HELP_FILES}

fi


sudo rsync -avzp ./Prayers/ ${PRAYERS} 
sudo rsync -avzp ./HelpFiles/ ${HELP_FILES} 
sudo rsync -avzp ./Sounds/ ${SOUND_FILES} 

