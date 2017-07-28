#!/bin/bash

conda env create -vv -f ./jmatlab.yml

# https://github.com/Calysto/matlab_kernel
source activate jmatlab
python -m matlab_kernel install

# Your MATLAB path
MATLAB_PATH="/Applications/MATLAB_R2017a.app"

cd $MATLAB_PATH/extern/engines/python/
python setup.py install
