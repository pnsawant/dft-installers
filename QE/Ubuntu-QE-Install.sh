# README -

# This is bash script for compiling quantum espresso on Ubuntu
# Use the command "./<file-name>.sh" in Ubuntu/Linux Shell to execute this file
# Use "chmod +x <file-name>.sh" to execute permissions IF NEEDED

#!/bin/bash

echo -e "\nIMP Message : This is bash script for compiling quantum espresso on Ubuntu\n"

# Update list of repositories and upgrade the system
sudo apt -y update
sudo apt -y upgrade
# Completion message
echo -e "\nIMP Message : Updation & Upgradation of list of repositories finished sucessfully!\n"

# Important development tools and libraries:
# Git
sudo apt -y install git
# Completion message
echo -e "\nIMP Message : Installation of Git finished!\n"

# wget, gcc/g++/gfortran, LAPACK, FFTW, openmpi (mpirun)
sudo apt -y install wget build-essential g++ gfortran liblapack-dev libfftw3-dev libopenmpi-dev
# Completion message
echo -e "\nIMP Message : Installation of Fortran-Compilers, Parallel-Processors, etc. finished sucessfully!\n"

# Quantum ESPRESSO
sudo apt -y install quantum-espresso
# Completion message
echo -e "\nIMP Message : Installation of Quantum ESPRESSO finished sucessfully!\n"

# Wannier90 
sudo apt -y install wannier90
# Completion message
echo -e "\nIMP Message : Installation of Wannier90 finished sucessfully!\n"

# Visualization tools 
sudo apt -y install xcrysden gnuplot
# Completion message
echo -e "\nIMP Message : Installation of visualization tools (XCrySDen, Gnuplot) finished sucessfully!\n"

# Python
sudo apt -y install python3-dev python3-pip
# Completion message
echo -e "\nIMP Message : Installation of python3-dev, python3-pip finished sucessfully!\n"

# Python libraries
pip3 install numpy scipy sympy matplotlib jupyter ase
# Completion message
echo -e "\nIMP Message : Installation of python post-processing libraries (numpy, scipy, sympy, matplotlib, jupyter, ase) finished sucessfully!\n"

# Export Path
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# Completion message
echo -e "\nIMP Message : Exporting of path finished sucessfully!\n"

echo -e "\nIMP Message : All installation processes finished sucessfully!\n"
echo -e "\nIMP Message : Let's start the journy of DFT with Quatum ESPRESSO!\n"
