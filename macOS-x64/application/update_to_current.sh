#! /bin/bash
# Basic install script assumes wails and golang are properly installed 
# and that all dependencies are already met...given that this should
# work on most distros.   If you use arch it is already in the user
# repos.
cd ~/go/src/gitlab.com/chrisfair/latin-catholic-prayers
wails build -f

INSTALLER_DIR=/Users/christopher/Projects/macos-installer-builder/macOS-x64/application
APP_DIR=/Users/christopher/Projects/macos-installer-builder/macOS-x64/application/Lacap.app/Contents
PRAYERS=$INSTALLER_DIR/Prayers
HELP_FILES=$INSTALLER_DIR/HelpFiles
SOUND_FILES=$INSTALLER_DIR/Sounds

rm $INSTALLER_DIR/lacap
cp ./build/latin-catholic-prayers $INSTALLER_DIR/lacap
rm $APP_DIR/Lacap
cp ./build/latin-catholic-prayers $APP_DIR

rsync -avzp ./Prayers/ ${PRAYERS} 
rsync -avzp ./HelpFiles/ ${HELP_FILES} 
rsync -avzp ./Sounds/ ${SOUND_FILES} 
