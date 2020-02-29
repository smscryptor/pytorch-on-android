#!/bin/bash
pacman -S base-devel
pacman -S git
pacman -S cmake
pacman -S linux-headers
pacman -S python-pip
git clone https://github.com/pytorch/pytorch.git
git checkout build/1.3.1
cd pytorch
git submodule update --init --recursive
pip install -U setuptools
pip install -r requirements.txt
python setup.py install
cd ..

