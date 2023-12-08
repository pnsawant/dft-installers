# README -

# This is bash script for compiling quantum espresso on Ubuntu silently
# Use the command "./<file-name>.sh" in Ubuntu/Linux Shell to execute this file
# Use "chmod +x <file-name>.sh" to execute permissions IF NEEDED

#!/bin/bash

echo -e "\nIMP Message : This is bash script for compiling quantum espresso on Ubuntu silently\n"

# Function to install a package silently
install_package_silent() {
    echo -e "\n"
    echo -n "IMP Message : Installing $1..."
    echo -e "\n"
    {
        set -e
        sudo apt-get -y install $1 > /dev/null 2>&1
        #  "> /dev/null 2>&1" is for silent installation & hiding output
    } || {
        echo -e "\n"
        echo "IMP Message : Failed"
        echo -e "\n"
        exit 1
    }
    echo -e "\n"
    echo "IMP Message : Done"
    echo -e "\n"
    echo "IMP Message : Installation of $1 finished successfully!"
    echo -e "\n"
}

# Update list of repositories and upgrade the system
sudo apt -y update
sudo apt -y upgrade
echo -e "\nIMP Message : Updation & Upgradation of list of repositories finished successfully!\n"

# Install Git silently
install_package_silent "git"

# Install necessary development tools and libraries silently
install_package_silent "wget build-essential g++ gfortran liblapack-dev libfftw3-dev libopenmpi-dev"

# Install Quantum ESPRESSO silently
install_package_silent "quantum-espresso"

# Install Wannier90 silently
install_package_silent "wannier90"

# Install visualization tools silently
install_package_silent "xcrysden gnuplot"

# Install Python and required libraries silently
install_package_silent "python3-dev python3-pip"

# Install Python libraries silently
pip3 install --quiet numpy scipy sympy matplotlib jupyter ase
echo -e "\nIMP Message : Installation of python post-processing libraries (numpy, scipy, sympy, matplotlib, jupyter, ase) finished successfully!\n"

# Export Path
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# Completion message
echo -e "\nIMP Message : Exporting of path finished successfully!\n"

echo -e "\nIMP Message : All installation processes finished successfully!\n"
echo -e "\nIMP Message : Let's start the journey of DFT with Quantum ESPRESSO!\n"
