#!/bin/bash
# setup.sh - Deployment script for AI image/video models in GitHub Codespaces

set -e

echo "🚀 Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y

echo "📦 Installing system dependencies..."
sudo apt-get install -y git wget curl build-essential ffmpeg libgl1 libglib2.0-0 python3-venv

echo "🐍 Setting up Python virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

echo "⬇️ Installing PyTorch (CPU build for Codespaces)..."
pip install --upgrade pip
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

echo "📚 Installing AI libraries..."
pip install diffusers transformers accelerate safetensors
pip install opencv-python Pillow tqdm

echo "📸 Installing image/video tools..."
pip install git+https://github.com/facebookresearch/segment-anything.git
pip install git+https://github.com/xinntao/Real-ESRGAN.git
pip install deoldify

echo "🖼️ Cloning ComfyUI for Stable Diffusion / ControlNet / SVD..."
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt
cd ..

echo "✅ Setup complete!"
echo ""
echo "👉 To run ComfyUI:"
echo "cd ComfyUI && python main.py --listen 0.0.0.0 --port 7860"
echo ""
echo "Then, in Codespaces, forward port 7860 and open in browser."
