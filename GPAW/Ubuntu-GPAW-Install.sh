# README -

# Installation of GPAW on windows through both pip & conda and on WSL through pip gives problem related to Microsoft Visual Studio C++ Development Tools.
# So, we install GPAW on WSL via Conda

# This is bash script for installing GPAW (python DFT library) in conda environment on WSL
# Use the command "./<file-name>.sh" in WSL Shell to execute this file
# Use "chmod +x <file-name>.sh" to execute permissions IF NEEDED

#!/bin/bash

echo -e "\nIMP Message : This is bash script for installing GPAW (python DFT library) in conda environment on WSL\n"

# Update the list of repositories and upgrade the system
sudo apt -y update
sudo apt -y upgrade
# Completion message
echo -e "\nIMP Message : Updation & Upgradation of list of repositories finished sucessfully!\n"

# Create a Conda environment named 'myenv' with Python 3.8
conda create -y -n dftenv
# Completion message
echo -e "\nIMP Message : Created conda environment with name : 'dftenv' with latest version of python sucessfully!\n"

# Check list of Conda environments
echo -e "\nIMP Message : The list of conda environments is : \n"
conda env list
echo -e "\n"

# Activate the Conda environment
conda activate dftenv
# Completion message
echo -e "\nIMP Message : Activated dftenv sucessfully!\n"

# Install GPAW using Conda
conda install -y -c conda-forge gpaw
# Completion message
echo -e "\nIMP Message : Installed GPAW sucessfully!\n"

# Install dependencies of GPAW using Conda
conda install -y -c conda-forge ase matplotlib numpy scipy sympy jupyter
# Completion message
echo -e "\nIMP Message : Installed ase, matplotlib, numpy, scipy, sympy, jupyter sucessfully!\n"

# Deactivate the Conda environment
conda deactivate
# Completion message
echo -e "\nIMP Message : Deactivated dftenv sucessfully!\n"

echo -e "\nIMP Message : All processes finished sucessfully!\n"
echo -e "\nIMP Message : Let's start journey of DFT with GPAW! You can use GPAW & it's dependancies by activating the dftenv environment\n"
