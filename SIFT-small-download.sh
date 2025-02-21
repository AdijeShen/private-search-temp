#!/bin/bash

# 该URL对应的是ANN_SIFT数据集的压缩包
DATA_URL="ftp://ftp.irisa.fr/local/texmex/corpus/sift.tar.gz"

# 设置下载后数据放置的目录
OUTPUT_DIR="./SIFT-dataset"

echo "Downloading the ANN_SIFT dataset to $OUTPUT_DIR..."
mkdir -p "$OUTPUT_DIR"

echo "Downloading sift.tar.gz (约5MB)..."
wget -P "$OUTPUT_DIR" "$DATA_URL"

echo "Extracting sift.tar.gz ..."
tar -xf "$OUTPUT_DIR/sift.tar.gz" -C "$OUTPUT_DIR"

echo "SIFT dataset downloaded and extracted successfully!"
