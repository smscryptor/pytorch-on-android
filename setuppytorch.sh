#!/bin/bash
pacman -S base-devel
pacman -S git
pacman -S python-pip
git clone http://github.com/pytorch/pytorch
cd pytorch
git submodule update --init --recursive
pip install -U setuptools
pip install -r requirements.txt
python setup.py install
cd ..

