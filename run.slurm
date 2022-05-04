#!/bin/bash -e
#
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=4
#SBATCH --time=23:00:00
#SBATCH --mem=32GB
#SBATCH --job-name=dino
#SBATCH --output=/scratch/yk1962/dl-final/dino/outputs/slurm_%j.out
#SBATCH --gres=gpu:8
module purge

# Enter required modules
cd /scratch/yk1962/dl-final/dino
source /scratch/yk1962/miniconda3/bin/activate updetr
mkdir models
python -m torch.distributed.launch --nproc_per_node=8 main_dino.py --arch vit_small --data_path /scratch/yk1962/datasets/tmp --output_dir models

