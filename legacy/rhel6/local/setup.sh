#!/bin/bash

# Create "modules/vscode" directory if it doesn't exist
if [ ! -d ${HOME}/work/sw/modules/vscode ]; then
    mkdir -p ${HOME}/work/sw/modules/vscode
fi

# Create "vscode" directory if it doesn't exist
if [ ! -d ${HOME}/work/sw/vscode ]; then
    mkdir -p ${HOME}/work/sw/vscode
fi

# Copy vscode_rhel6.sif and 1.51.1-local.lua to
# respective locations
cp vscode_rhel6.sif ${HOME}/work/sw/vscode/vscode_rhel6.sif
cp 1.50.1-rhel6-local.lua ${HOME}/work/sw/modules/vscode/1.50.1-rhel6-local.lua

# Adjust permissions accordingly
chmod -R ug+rx ${HOME}/work/sw/modules
chmod -R ug+rx ${HOME}/work/sw/vscode

# Once the install is finished
echo "Installation of the vscode module has finished"
echo -e "\nTo use vscode, enter the following commands in your terminal:\n"
echo "module use ~/work/sw/modules"
echo "module load vscode/1.50.1-rhel6-local.lua"
echo -e "\nIf you run into any issues please contact Jason at iask@ics.psu.edu"