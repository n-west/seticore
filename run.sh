#!/bin/bash

H5=data/blc17_guppi_59544_62191_HIP99317_0059.rawspec.0000.h5
./build/seticore $H5 --max_drift=0.4 --snr=10 --min_drift=0 | tee data/output.txt
if [ -f "data/golden.txt" ]; then
    echo diffing
    diff data/output.txt data/golden.txt
fi
