#!/bin/bash
pacman -S base-devel
pacman -S git
pacman -S cmake
pacman -S linux-headers
pacman -S python2-pip
git clone https://github.com/pytorch/pytorch.git
cd pytorch
git checkout v1.3.1
git submodule update --init --recursive
pip2 install -U setuptools
pip2 install -r requirements.txt
python2 setup.py install
cd ..

