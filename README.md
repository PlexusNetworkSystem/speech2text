# speech 2 text
Developed by [Abra](https://github.com/Aegeansword "Abra")
# offline.speech2text.cpp
This code reads the linear symbol sequence from the compact lattice, converts each symbol to a word using the symbol table, and concatenates the words into a single string. It then prints the string to the console.
### how can i install needed repos?
To install Kaldi and its dependencies, you will need to follow these steps:
Install the required dependencies. Kaldi requires several libraries and tools to be installed on your system. You can find a list of the requiredependencies in the Kaldi documentation:<br>
**LINK:** https://kaldi-asr.org/doc/install.html#required-libraries<br><br>
Download the Kaldi source code. You can download the latest version of Kaldi from the official Kaldi website:<br>
**LINK:** https://kaldi-asr.org/downloads.html<br><br>
Alternatively, you can clone the Kaldi repository from GitHub:<br>
**LINK:** https://github.com/kaldi-asr/kaldi<br><br>
Build and install Kaldi. Once you have downloaded the Kaldi source code, you can build and install it by running the following commands:
```
cd /path/to/kaldi/src
./configure --shared
make -j $(nproc)
make install
```
Replace /path/to/kaldi/src with the path to the Kaldi source code on your system. This will build and install Kaldi and its dependencies.

I hope this helps! Let me know if you have any questions or encounter any issues during the installation process.
### How can i run this code?
To compile and run this code, you will need to install Kaldi and its dependencies on your system. You will also need to download or create the necessary model and configuration files, as well as the audio file that you want to transcribe.

Once you have these resources and Kaldi is installed, you can compile the code using a C++ compiler such as g++. For example, you can use the following command to compile the code:
```
g++ -std=c++11 -I /path/to/kaldi/src -L /path/to/kaldi/src/lib -Wl,-rpath,/path/to/kaldi/src/lib -o transcribe transcribe.cpp -lkaldi-base -lkaldi-feat -lkaldi-hmm -lkaldi-gmm -lkaldi-decoder
```
Replace **/path/to/kaldi/src** with the path to the Kaldi source code on your system.

You can then run the program by typing:
```
./transcribe
```

This will transcribe the audio file and print the transcription to the console. If you encounter any errors or have any difficulty running the code, please let me know and I will do my best to help you.
