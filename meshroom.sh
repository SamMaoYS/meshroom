#!/bin/bash

# this should point to the installation folder of AliceVision, for the pre-built binaries
# it would be the full path to the folder aliceVision
export ALICEVISION_INSTALL=/home/sam/Development/Lab/meshroom/install

export PATH=$PATH:${ALICEVISION_INSTALL}/bin

# location of the sensor database
export ALICEVISION_SENSOR_DB=${ALICEVISION_INSTALL}/share/aliceVision/cameraSensors.db
export ALICEVISION_VOCTREE=${ALICEVISION_INSTALL}/share/aliceVision/vlfeat_K80L3.SIFT.tree

# adjust according to your driver and cuda version
export LD_LIBRARY_PATH=${ALICEVISION_INSTALL}/lib:/usr/lib/nvidia:/usr/local/cuda-10.1/lib64/:$LD_LIBRARY_PATH

# the meshroom path (the current directory)
export MESHROOMPATH=$PWD

# this line launch whatever script and relevant options that are given as input ($@)
PYTHONPATH=${MESHROOMPATH} PATH=$PATH:${ALICEVISION_INSTALL}/bin python ${MESHROOMPATH}/$@
