# Resnet backbone using DINO

## inorder to run:

1. Put the dataset into a tmp folder and create a directory for the output model
2. Run:

```python -m torch.distributed.launch --nproc_per_node=NUM_OF_GPUS main_dino.py --arch resnet50 --data_path PATH_TO_TMP--output_dir OUTPUT_DIRECTORY```


## sample code:

```python -m torch.distributed.launch --nproc_per_node=4 main_dino.py --arch resnet50 --data_path /scratch/yk1962/datasets/tmp --output_dir resnet-50/model-24h```

You can also use the slurm file "run-resnet.slurm" when using Greene. Just change some paths.

3. Change the output checkpoint file format: run the "get_backbone-original.ipynb". Change the second line  in the second cell: `pretrained_weights = os.path.join(os.getcwd(), 'inputs', 'resnet.pth')` to the output path.
4. Change the path in the last cell to an output directory, it is defaulted as "zoo" here.
5. Run the notebook and format the Resnet! 
6. Go to the Faster R-CNN repository :). LInk: https://github.com/Matt-Kou/dl-final/tree/ggflow123-patch-1
