import argparse
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("-f", "--face_enhance", help="Enable face enhancement", action="store_true")
args = parser.parse_args()

inference_args = ["python3", "esrgan/inference_realesrgan.py", "-n", "RealESRGAN_x4plus", "-i", "inputs", "-o", "outputs", "--fp32"]
if args.face_enhance:
    inference_args.append("--face_enhance")

subprocess.run(inference_args, check=True)