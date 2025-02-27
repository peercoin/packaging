#!/bin/bash

# Variables
PEERCOINVERSION=0.15.0
URL="https://github.com/peercoin/peercoin/archive/refs/tags/v${PEERCOINVERSION}ppc.tar.gz"
FILENAME="peercoin_${PEERCOINVERSION}.orig.tar.gz"
DIRNAME="peercoin-${PEERCOINVERSION}ppc"
DEBIAN_DIR="../debian"

# Download the .tar.gz file
wget $URL -O $FILENAME

# Decompress and extract the .tar.gz file
tar -xzf $FILENAME

# Change directory to the extracted directory
cd $DIRNAME

# Copy the debian directory
cp -r $DEBIAN_DIR .

echo "All tasks completed successfully!"
