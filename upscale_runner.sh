#!/bin/bash

# Check if face_enhance argument was passed
if [ "$1" = "face_enhance" ]; then
  face_enhance="face_enhance"
fi

# Run install_python3_if_not_exists.sh
./install_python3_if_not_exists.sh

# Check if installation was successful
if [ $? -ne 0 ]; then
  echo "Failed to find and/or install Python3. Exiting."
  exit 1
fi

# Run setup.py
python3 setup.py

# Run upscaler.py with optional face_enhance argument
if [ -z "$face_enhance" ]; then
  python3 upscaler.py
else
  python3 upscaler.py "$face_enhance"
fi