#!/bin/sh
# ==============================================================================
# Project: Seismic Processing of Mobil AVO Viking Graben Line 12 (SEG 1994)
# Step 1: SEG-Y Ingestion, Geometry Definition, and Amplitude Balancing
# Framework: Native Seismic Unix (SU) Environment
# ==============================================================================

echo "Initializing real data ingestion for Viking Graben Line 12..."

# 1. Read raw SEG-Y stream and pass through segyclean to sanitize field records
segyread tape=viking_graben_line12.segy verbose=1 | segyclean > raw_viking.su

echo "Ingestion completed. Commencing trace header and geometry check..."

# 2. Re-assign source/receiver coordinates or trace headers if necessary
sushw < raw_viking.su key=fldr a=1 b=1 > raw_geometry.su

echo "Applying Automatic Gain Control (AGC)"

# 3. Apply AGC to recover attenuation from spherical divergence in marine columns
sugain agc=1 wagc=0.5 clip=0.02 < raw_geometry.su
