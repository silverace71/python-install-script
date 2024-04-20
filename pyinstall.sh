#!/bin/bash

## setup stuff

echo "What version of Python do you want to install/change to? (i.e. 3.10.11 | 3.9.17 | 3.2.0)"
read pver
echo "Do you want to install Python-$pver? [y/n]"
read conf
if [[ $conf =~ ^[Nn]$ ]]; then
./pyinstall
else
sleep 1
fi
echo "Do you want to enable Python optimizations? [y/n]"
read pyopt
## install section

wget https://www.python.org/ftp/python/$pver/Python-$pver.tgz
tar -zxvf Python-$pver.tgz
cd Python-$pver
if [[ $pyopt =~ ^[Yy]$ ]]; then
./configure --enable-optimizations
else
./configure
fi
make
sudo make install
echo "Your Python version is"
sleep 1
python3 --version