# This is bash script for installing GPAW on Google Colab
# Use the command "! bash <file-name>.sh" in Google Colab to execute this file

## GPAW Installation

echo -e "\nIMP Message : This is bash script for installing GPAW on Google Colab\n"

# Installation of dependancy tools of GPAW
apt install python3-mpi4py cython3 libxc-dev gpaw-data > /dev/null 2>&1
# "> /dev/null 2>&1" is for silent installation & hiding output
# Completion message
echo -e "\nIMP Message : Installation of dependancy tools of GPAW (python3-mpi4py, cython3, libxc-dev, gpaw-data) finished sucessfully!\n"

# Installation of GPAW
pip install --quiet gpaw ase matplotlib scipy sympy
# Completion message
echo -e "\nIMP Message : Installation of GPAW & dependancies viz. ase, matplotlib, scipy, sympy finished sucessfully!\n"

# Installation of other python libraries - IF NEEDED
#pip3 install --quiet pymatgen
# Completion message
#echo -e "\nIMP Message : Installation of other python libraries (pymatgen) finished sucessfully!\n"


# Testing of GPAW installation 
gpaw test
# Completion message
echo -e "\nIMP Message : Testing of GPAW finished sucessfully!\n"
echo -e "\nIMP Message : You can also test GPAW by : import gpaw\n"

echo -e "\nIMP Message : All installation processes including GPAW finished sucessfully!\n"
echo -e "\nIMP Message : Let's start the journy of DFT with GPAW!\n"