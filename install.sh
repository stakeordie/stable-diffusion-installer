#/bin/bash

sudo apt update
sudo apt install liblzma-dev build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev nginx
wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz
tar -xvf Python-3.10.6.tgz
cd Python-3.10.6
sudo ./configure --enable-optimizations
sudo make -j 2
sudo make altinstall
cd ..
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffussion-webui/models/Stable-Diffussion
 wget --user $1 --password $2 https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned.ckpt
cd ../..
wget https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.4.pth
