# README -

# This is bash script for installing Conda on WSL
# Use the command "./<file-name>.sh" in WSL Shell to execute this file
# Use "chmod +x <file-name>.sh" to execute permissions IF NEEDED

#!/bin/bash

echo -e "\nIMP Message : This is bash script for installing Conda on WSL\n"

# Update list of repositories and upgrade the system
sudo apt -y update
sudo apt -y upgrade
# Completion message
echo-e "\nIMP Message : Updation & Upgradation of list of repositories finished sucessfully!\n"

# Download latest version of MiniConda
# It downloads .sh file in a folder where you have opened WSL Shell
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# Completion message
echo -e "\nIMP Message : Downloading of most latest version of MiniConda finished sucessfully!\n"

# Installing MiniConda
bash Miniconda3-latest-Linux-x86_64.sh
# Completion message
echo -e "\nIMP Message : Installation of most latest version of MiniConda finished sucessfully!\n"

# Deactivate base environment on start-up
conda config --set auto_activate_base false
# Completion message
echo -e "\nIMP Message : Deactivated auto start-up of base environment on start-up of conda sucessfully!\n"

# Delete downloaded .sh file
rm Miniconda3-latest-Linux-x86_64.sh
# Completion message
echo -e "\nIMP Message : Deleted Setup .sh file sucessfully!\n"

# Restart the PC or WSL Shell
echo -e "\nIMP Message : Restart the PC or WSL Shell.\n"