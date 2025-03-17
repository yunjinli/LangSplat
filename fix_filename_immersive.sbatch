#!/bin/bash
#SBATCH --job-name="[OpenGaussian] fix"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --time=5:00:00
#SBATCH --output=/usr/stud/lyun/LangSplat/log/slurm-%j.out
#SBATCH --error=/usr/stud/lyun/LangSplat/log/slurm-%j.out

# python fix_filename_immersive.py /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/11_Alexa_Meade_Face_Paint_2
# python fix_filename_immersive.py /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/10_Alexa_Meade_Face_Paint_1
# python fix_filename_immersive.py /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/02_Flames
python fix_filename_immersive.py /usr/stud/lyun/storage/user/4dgsam/new_data/immersive/01_Welder