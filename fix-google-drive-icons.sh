#!/usr/bin/env bash

sudo cp ./google-drive-folder-icon.icns /tmp/

# change to proper directory
cd /Applications/Google\ Drive.app/Contents/Resources/

# back up the files
sudo mkdir icon-backups
sudo cp mac-animate*.png icon-backups/
sudo cp mac-error*.png icon-backups/
sudo cp mac-inactive*.png icon-backups/
sudo cp mac-normal*.png icon-backups/
sudo cp mac-paused*.png icon-backups/
sudo cp lib/python2.7/resources/images/folder-mac.icns icon-backups/
sudo cp lib/python2.7/resources/images/sharedfolder-mac.icns icon-backups/

# replace "regular" versions with "inverse"

# animate
for idx in {1,2,3,4,5,6,7,8}
do
	sudo cp "mac-animate$idx-inverse.png" "mac-animate$idx.png" && sudo cp "mac-animate$idx-inverse@2x.png" "mac-animate$idx@2x.png"
done

# error
sudo cp "mac-error-inverse.png" "mac-error.png" && sudo cp "mac-error-inverse@2x.png" "mac-error@2x.png"

# inactive
sudo cp "mac-inactive-inverse.png" "mac-inactive.png" && sudo cp "mac-inactive-inverse@2x.png" "mac-inactive@2x.png"

# normal
sudo cp "mac-normal-inverse.png" "mac-normal.png" && sudo cp "mac-normal-inverse@2x.png" "mac-normal@2x.png"

# paused
sudo cp "mac-paused-inverse.png" "mac-paused.png" && sudo cp "mac-paused-inverse@2x.png" "mac-paused@2x.png"

# folder-icon
sudo cp /tmp/google-drive-folder-icon.icns lib/python2.7/resources/images/folder-mac.icns
sudo cp /tmp/google-drive-folder-icon.icns lib/python2.7/resources/images/sharedfolder-mac.icns

# folder-icon in user folder
sudo cp /tmp/google-drive-folder-icon.icns ~/Google\ Drive/Icon

sudo rm /tmp/google-drive-folder-icon.icns
