#!/bin/bash

#   tm-monitor installer
#   copyright 2015 dataLAB

# Create the '/usr/local/bin' directory if it does not exist
if [ ! -d "/usr/local/bin" ]; then
  sudo mkdir -p /usr/local
  sudo chown root:admin /usr/local
  sudo chmod -R 775 /usr/local
  mkdir -p /usr/local/bin
fi

# Download the 'tm-monitor' script
curl -s -o /usr/local/bin/tm-monitor https://raw.githubusercontent.com/datalab/tm-monitor/master/tm-monitor

# Make the 'tm-monitor' script executable
chmod +x /usr/local/bin/tm-monitor

# Finish up and ask the user if they want to go ahead and setup.
echo "Congrats! tm-monitor has been installed. You may now run the setup command with 'tm-monitor --setup'"
echo ""
while true; do
  read -p "Would you like to run the setup now? [Y/n]" yn
  case $yn in
  [Yy]* ) /usr/local/bin/tm-monitor --setup; break;;
  [Nn]* ) exit ;;
  * ) echo "Please answer yes or no.";;
  esac
done