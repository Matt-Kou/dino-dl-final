#!/bin/bash -e
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=14
#SBATCH --time=47:59:59
#SBATCH --mem=128GB
#SBATCH --job-name=dino
#SBATCH --output=/scratch/yk1962/dl-final/dino/outputs-6/slurm_%j.out
#SBATCH --gres=gpu:4
module purge

# Enter required modules
cd /scratch/yk1962/dl-final/dino
source /scratch/yk1962/miniconda3/bin/activate updetr

python -m torch.distributed.launch --nproc_per_node=4 main_dino.py --arch vit_small --data_path /scratch/yk1962/datasets/tmp --output_dir models-6

