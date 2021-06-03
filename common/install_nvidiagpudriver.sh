#!/bin/bash
set -ex

# Install Cuda
wget https://developer.download.nvidia.com/compute/cuda/11.3.1/local_installers/cuda_11.3.1_465.19.01_linux.run
chmod +x cuda_11.3.1_465.19.01_linux.run
sh cuda_11.3.1_465.19.01_linux.run --silent
echo 'export PATH=$PATH:/usr/local/cuda/bin' | sudo tee -a /etc/bash.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64' | sudo tee -a /etc/bash.bashrc

# Nvidia driver
wget https://download.nvidia.com/XFree86/Linux-x86_64/465.19.01/NVIDIA-Linux-x86_64-465.19.01.run
bash NVIDIA-Linux-x86_64-465.19.01.run --silent
