# llamacpp-vulkan-snap
A minimal snap to demonstrate feasibility of strictly confined llama.cpp with Vulkan support.

## Usage

Firstly, build the snap:

```bash
snapcraft pack -v
```

Then, install and connect the home interface:

```bash
sudo snap install *.snap --dangerous 
sudo snap connect llamacpp-vulkan:home
```

Finally, run the server, pointing it to some model weights:

```bash
llamacpp-vulkan -m ~/Downloads/gemma-4-E4B-it-Q4_K_M.gguf -lv 4    
```
