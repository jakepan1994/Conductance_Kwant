#!/bin/bash
#SBATCH --mail-user=hnpan@terpmail.umd.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --share
#SBATCH -t 2:05:00
#SBATCH -n 256

. ~/.profile

cd $PWD

module load python/3.5.1
module load openmpi/1.8.6

mpirun python Majorana_main.py 
