#!/bin/bash
#SBATCH --job-name="[OpenGaussian] Preprocess"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1,VRAM:24G
#SBATCH --time=48:00:00
#SBATCH --output=/usr/stud/lyun/LangSplat/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/LangSplat/log/slurm-%j.out


# python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/4dgsam/data/NeRF-DS/press_novel_view 
# python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/4dgsam/data/HyperNeRF/misc/split-cookie
# python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/storage/user/4dgsam/data/technicolor/Undistorted/Theater
python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/storage/user/4dgsam/data/Neu3D/cook_spinach --load_image_on_the_fly
# python preprocess.py --sam_ckpt_path /usr/stud/lyun/SADG-SegmentAnyDynamicGaussian/dependency/sam_vit_h_4b8939.pth --dataset_path /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/01_Welder --end_frame 50 --load_image_on_the_fly
