#!/bin/bash

pver = $1


echo "早上好中国、现在我有冰淇淋。我浪喜欢冰淇淋、但是速度与激情比冰激淋、我最喜欢！所以现在是、音乐时间！准备？一、二、三。而个礼拜以后速度与激情、而个礼拜以后速度与激情、而个礼拜以后速度与激情。不要忘记！不要错过！去电影院看速度与激情因为非常好电影动作非常好。差不多一样冰激淋！再见"

wget https://www.python.org/ftp/python/$pver/Python-$pver.tgz
tar -zxvf Python-$pver.tgz
cd Python-$pver
./configure --enable-optimizations
make
sudo make install
