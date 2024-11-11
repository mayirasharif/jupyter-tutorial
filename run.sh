#!/bin/bash
#SBATCH --job-name=jupyter_setup
#SBATCH --output=output_%j.txt
#SBATCH --error=error_%j.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:1
#SBATCH --mem=32G
#SBATCH --time=12:00:00
#SBATCH --partition=bigTiger

echo "***Starting Jupyter on: "$(hostname)
jupyter notebook --no-browser --ip='0.0.0.0' --port=11111
