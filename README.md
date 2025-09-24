# 🚀 Run ComfyUI Locally

This guide will help you install and run **ComfyUI** locally.  
The provided script automatically installs all dependencies.  
After setup, just **download your models** and start generating images!  

---

## 📦 Setup Instructions

1. **Download** the `setup.sh` file (or copy its contents into a new file locally).  

2. **Give execution permissions**:  
```bash
chmod +x setup.sh
Run the setup script:

bash
Copy code
./setup.sh
Activate the virtual environment:

bash
Copy code
source .venv/bin/activate
Start ComfyUI (CPU mode for Codespaces):

bash
Copy code
cd ComfyUI
python main.py --listen 0.0.0.0 --port 7860 --cpu --lowvram
ℹ️ Use --cpu if you don’t have an NVIDIA GPU available.
ℹ️ Use --lowvram to reduce memory usage on low-RAM environments like Codespaces.

📂 Adding Models
Before generating images, download models into the correct folders.

🔹 1. Checkpoints (Stable Diffusion base models)
bash
Copy code
ComfyUI/models/checkpoints/
Example (SD v1.5):

bash
Copy code
mkdir -p ComfyUI/models/checkpoints
cd ComfyUI/models/checkpoints
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
🔹 2. VAE (optional, for color/contrast)
bash
Copy code
ComfyUI/models/vae/
Example:

bash
Copy code
mkdir -p ComfyUI/models/vae
cd ComfyUI/models/vae
wget https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors
🔹 3. ControlNet (pose, edges, depth guidance)
bash
Copy code
ComfyUI/models/controlnet/
Example:

bash
Copy code
mkdir -p ComfyUI/models/controlnet
cd ComfyUI/models/controlnet
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth
🔹 4. LoRA (style/character fine-tunes)
bash
Copy code
ComfyUI/models/loras/
Example: Place any .safetensors LoRA files into this folder.

🔹 5. Upscalers (super-resolution models)
bash
Copy code
ComfyUI/models/upscale_models/
Example (Real-ESRGAN):

bash
Copy code
mkdir -p ComfyUI/models/upscale_models
cd ComfyUI/models/upscale_models
wget https://huggingface.co/caidas/swin2sr-classical-sr-x2-64/resolve/main/model.safetensors
🌐 Accessing ComfyUI
After starting ComfyUI, forward port 7860 in Codespaces.
Open the browser and access:
arduino
Copy code
http://localhost:7860
🔗 Made by / Sponsored by
Made by # 🚀 Run ComfyUI Locally

This guide will help you install and run **ComfyUI** locally.  
The provided script automatically installs all dependencies.  
After setup, just **download your models** and start generating images!  

---

## 📦 Setup Instructions

1. **Download** the `setup.sh` file (or copy its contents into a new file locally).  

2. **Give execution permissions**:  
```bash
chmod +x setup.sh
Run the setup script:

bash
Copy code
./setup.sh
Activate the virtual environment:

bash
Copy code
source .venv/bin/activate
Start ComfyUI (CPU mode for Codespaces):

bash
Copy code
cd ComfyUI
python main.py --listen 0.0.0.0 --port 7860 --cpu --lowvram
ℹ️ Use --cpu if you don’t have an NVIDIA GPU available.
ℹ️ Use --lowvram to reduce memory usage on low-RAM environments like Codespaces.

📂 Adding Models
Before generating images, download models into the correct folders.

🔹 1. Checkpoints (Stable Diffusion base models)
bash
Copy code
ComfyUI/models/checkpoints/
Example (SD v1.5):

bash
Copy code
mkdir -p ComfyUI/models/checkpoints
cd ComfyUI/models/checkpoints
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
🔹 2. VAE (optional, for color/contrast)
bash
Copy code
ComfyUI/models/vae/
Example:

bash
Copy code
mkdir -p ComfyUI/models/vae
cd ComfyUI/models/vae
wget https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors
🔹 3. ControlNet (pose, edges, depth guidance)
bash
Copy code
ComfyUI/models/controlnet/
Example:

bash
Copy code
mkdir -p ComfyUI/models/controlnet
cd ComfyUI/models/controlnet
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth
🔹 4. LoRA (style/character fine-tunes)
bash
Copy code
ComfyUI/models/loras/
Example: Place any .safetensors LoRA files into this folder.

🔹 5. Upscalers (super-resolution models)
bash
Copy code
ComfyUI/models/upscale_models/
Example (Real-ESRGAN):

bash
Copy code
mkdir -p ComfyUI/models/upscale_models
cd ComfyUI/models/upscale_models
wget https://huggingface.co/caidas/swin2sr-classical-sr-x2-64/resolve/main/model.safetensors
🌐 Accessing ComfyUI
After starting ComfyUI, forward port 7860 in Codespaces.
Open the browser and access:

arduino
Copy code
http://localhost:7860
Sponsered By
[![MarketMindAI](https://marketmindai.com/logo.png)](https://marketmindai.com)

