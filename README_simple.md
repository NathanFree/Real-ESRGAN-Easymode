python3 -m venv myenv
myenv/Scripts/activate
pip install -r requirements.txt
pip install .


python3 inference_realesrgan.py -n RealESRGAN_x4plus -i inputs -o outputs --fp32

note: without --fp32, it will use fp16. fp16 throws some kind of error

note: in the above, we except a directory called inputs and outputs to be present in the current directory. we will loop through all images in inputs and save the outputs in outputs directory
