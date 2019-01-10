 #!/usr/bin/env bash

 # Execute this file to install the marlin cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%Marlin-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/Marlin-Qt.app/Contents/MacOS/marlind /usr/local/bin/marlind
 sudo ln -s ${LOCATION}/Marlin-Qt.app/Contents/MacOS/marlin-cli /usr/local/bin/marlin-cli
