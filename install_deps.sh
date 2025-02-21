# /bin/bash
# install go 1.23
wget https://go.dev/dl/go1.23.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.23.6.linux-amd64.tar.gz
echo "\nexport PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc

# install dependencies
go mod tidy
apt install libblas-dev liblapack-dev

wget -O NGT-v2.3.11.zip https://github.com/yahoojapan/NGT/archive/refs/tags/v2.3.11.zip
unzip NGT-v2.3.11.zip
cd NGT-2.3.11
mkdir build
cd build
cmake ..
make
make install
ldconfig /usr/local/lib

# wget -O Hnswlib-v0.8.0.zip https://github.com/nmslib/hnswlib/archive/refs/tags/v0.8.0.zip
# unzip Hnswlib-v0.8.0.zip
# cd hnswlib-0.8.0
# mkdir build
# cd build
# cmake ..
# make all -j8
# make install
# ldconfig /usr/local/lib
