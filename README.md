# README

This script (`upscale_runner.sh`) is a thin wrapper around [Real-ESRGAN](https://github.com/xinntao/Real-ESRGAN) and can be used to upscale images.

To use, simply run `./upscale_runner.sh` in a terminal window. This will run the Python script on all images in the inputs directory and save the outputs in the outputs directory.

**Note**: This wrapper is CPU only and therefore relatively slow. If you have an Nvidia-enabled GPU, it may use GPU by default (not tested). However, Real-ESRGAN has its own standalone wrapper which is more dynamic and natively has GPU support for all major GPU manufacturers. If you've made it here, you might want to use their wrapper instead.

## Real-ESRGAN Wrapper
Here are the instructions on how to use the Real-ESRGAN wrapper:

1. Download the wrapper from the following links based on your operating system (if the link doesn't work, check the Real-SRGAN repo for the updated links):
-[Windows](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.5.0/realesrgan-ncnn-vulkan-20220424-windows.zip)
-[Mac](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.5.0/realesrgan-ncnn-vulkan-20220424-macos.zip)
-[Linux](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.5.0/realesrgan-ncnn-vulkan-20220424-ubuntu.zip)
Unzip the file and navigate to the unzipped folder.

Create two folders: `inputs` and `outputs`.

Add the images you want to upscale to the `inputs` folder.

Open a terminal and navigate to your folder (`cd path/to/folder`).

Run the following command: `./realesrgan-ncnn-vulkan.exe -n realesrgan-x4plus -i inputs -o outputs`. This will do the conversions and let you know when it's doing/done with each input file. It will put the output files in the `outputs` folder with names like "inputfilename_out".

**Note 1**: If you try this on an image that has faces in it and the faces get warped in the upscale, try adding `--face_enhance` to the end of the command, like: `./realesrgan-ncnn-vulkan.exe -n realesrgan-x4plus -i inputs -o outputs --face_enhance`.

**Note 2**: On operating systems other than Windows, you'll have to modify your command based on the file extension; instead of ".exe" for "./realesrgan-ncnn-vulkan.exe", it may be ".app" or ".dmg", for instance. When you unzip the file you'll see the executable; you just want the name and type you see there.

**Note 3**: This works on video files! Check out the Real-ESRGAN readme if you're curious about how this works or what else it can do, or feel 
