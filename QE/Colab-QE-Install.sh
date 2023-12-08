# README -
# This is bash script for compiling Quantum ESPRESSO on Google Colab
# Use the command "!./<file-name>.sh" in Google Colab to execute this file
# Use "!chmod +x <file-name>.sh" to execute permissions IF NEEDED

## QE Compilation

echo -e "\nIMP Message : This is bash script for compiling Quantum ESPRESSO on Google Colab\n"

# Clone the QE git
git clone https://github.com/QEF/q-e.git
# Completion message
echo -e "\nIMP Message : Cloning of QE git repository finished sucessfully!\n"

# Install the dependencies
apt-get install -y libfftw3-3 libfftw3-dev libfftw3-doc > /dev/null 2>&1
# "> /dev/null 2>&1" is for silent installation & hiding output
# Completion message
echo -e "\nIMP Message : Installation of libfftw3-3 libfftw3-dev libfftw3-doc finished sucessfully!\n"

# Enter into q-e folder
cd q-e
# Completion message
echo -e "\nIMP Message : Entered into q-e folder sucessfully!\n"

# Run the configure file
DFLAGS='-D__OPENMP -D__FFTW3 -D__MPI -D__SCALAPACK' FFT_LIBS='-lfftw3'  ./configure --enable-openmp
# Completion message
echo -e "\nIMP Message : Configuration finished sucessfully!\n"

# Make pw.x binary
make pw
# Completion message
echo -e "\nIMP Message : Making of pw.x as binary executable finished sucessfully!\n"

# Completion message
echo -e "\nIMP Message : All processes finished sucessfully!\n"
echo -e "\nIMP Message : Quantum Espresso Compiled On Google Colab Sucessfully!\n"
echo -e "\nIMP Message : Let's start the journy of DFT with Quatum ESPRESSO!\n"
echo -e "\nIMP Message : You can access pw.x with command : ! /content/q-e/bin/pw.x \n"
