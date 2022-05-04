#!/bin/bash -e
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=14
#SBATCH --time=23:59:58
#SBATCH --mem=128GB
#SBATCH --job-name=dino
#SBATCH --output=/scratch/yk1962/dl-final/dino/resnet-50/slurm_24_%j.out
#SBATCH --gres=gpu:4
module purge

# Enter required modules
cd /scratch/yk1962/dl-final/dino
source /scratch/yk1962/miniconda3/bin/activate updetr

python -m torch.distributed.launch --nproc_per_node=4 main_dino.py --arch resnet50 --data_path /scratch/yk1962/datasets/tmp --output_dir resnet-50/model-24h

