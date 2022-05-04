# Resnet backbone using DINO

## inorder to run:

1. Put the dataset into a tmp folder and create a directory for the output model
2. Run:

```python -m torch.distributed.launch --nproc_per_node=NUM_OF_GPUS main_dino.py --arch resnet50 --data_path PATH_TO_TMP--output_dir OUTPUT_DIRECTORY```


## sample code:

python -m torch.distributed.launch --nproc_per_node=4 main_dino.py --arch resnet50 --data_path /scratch/yk1962/datasets/tmp --output_dir resnet-50/model-24h

You can also use the slurm file "run-resnet.slurm" when using Greene. Just change some paths.
