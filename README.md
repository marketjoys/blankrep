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
```

3. **Run the setup script**:

```bash
./setup.sh
```

4. **Activate the virtual environment**:

```bash
source .venv/bin/activate
```

5. **Start ComfyUI** (CPU mode for Codespaces):

```bash
cd ComfyUI
python main.py --listen 0.0.0.0 --port 7860 --cpu --lowvram
```

> ℹ️ Use `--cpu` if you don’t have an NVIDIA GPU available.
> ℹ️ Use `--lowvram` to reduce memory usage on low-RAM environments like Codespaces.

---

## 📂 Adding Models

Before generating images, download models into the correct folders.

### 🔹 1. Checkpoints (Stable Diffusion base models)

**Folder:**

```
ComfyUI/models/checkpoints/
```

Example (SD v1.5):

```bash
mkdir -p ComfyUI/models/checkpoints
cd ComfyUI/models/checkpoints
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
```

---

### 🔹 2. VAE (optional, for color/contrast)

**Folder:**

```
ComfyUI/models/vae/
```

Example:

```bash
mkdir -p ComfyUI/models/vae
cd ComfyUI/models/vae
wget https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors
```

---

### 🔹 3. ControlNet (pose, edges, depth guidance)

**Folder:**

```
ComfyUI/models/controlnet/
```

Example:

```bash
mkdir -p ComfyUI/models/controlnet
cd ComfyUI/models/controlnet
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth
```

---

### 🔹 4. LoRA (style/character fine-tunes)

**Folder:**

```
ComfyUI/models/loras/
```

Example: Place any `.safetensors` LoRA files into this folder.

---

### 🔹 5. Upscalers (super-resolution models)

**Folder:**

```
ComfyUI/models/upscale_models/
```

Example (Real-ESRGAN):

```bash
mkdir -p ComfyUI/models/upscale_models
cd ComfyUI/models/upscale_models
wget https://huggingface.co/caidas/swin2sr-classical-sr-x2-64/resolve/main/model.safetensors
```

---

## 🌐 Accessing ComfyUI

After starting ComfyUI, forward port **7860** in Codespaces.
Open the browser and access:

```
http://localhost:7860
```

---

## 🔗 Made by / Sponsored by

Made by [MarketMindAI](https://marketmindai.com)
or
Sponsored by [MarketMindAI](https://marketmindai.com)

You can also add a badge/logo:

```markdown
[![MarketMindAI](https://marketmindai.com/logo.png)](https://marketmindai.com)
```

---

✅ You are now ready to generate images locally with ComfyUI!
