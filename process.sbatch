#!/bin/bash
#SBATCH --job-name="[OpenGaussian] Preprocess"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:12G
#SBATCH --time=24:00:00
#SBATCH --partition=DEADLINEBIG
#SBATCH --comment="CVPR"
#SBATCH --output=/usr/stud/lyun/LangSplat/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/LangSplat/log/slurm-%j.out


# python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/4dgsam/data/NeRF-DS/press_novel_view 
python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/4dgsam/data/HyperNeRF/misc/split-cookie