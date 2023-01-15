#!/bin/bash
#SBATCH --output=./fn.out
#SBATCH --error=./fn.err
#SBATCH --job-name=fn
#SBATCH --cpus-per-task=32
#SBATCH --gpus-per-node=1
#SBATCH --mem=50GB
#SBATCH --nodes=1
#SBATCH --partition=scavenger
#SBATCH --time=1-00:00:00
#SBATCH --nodelist=gpu08

# conda activate fordataset
python ForgeryNet.py -path '/share/home/zhangchao/datasets_io03_ssd/ForgeryNet' -scale 1.3 -detector dlib -workers 32