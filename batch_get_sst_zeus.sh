#!/bin/bash --login
#
#SBATCH --account=pawsey0106
#SBATCH --time=12:00:00
##SBATCH --time=01:00:00
#SBATCH --export=PYTHONPATH="/home/mrayson/code:$PYTHONPATH"
#SBATCH --partition=workq
##SBATCH --partition=debugq
#SBATCH --output=LOGS/pythonmpi-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks=12
##SBATCH --cpus-per-task=1
##SBATCH --mem=32000

module use ~/code/modulefiles
module load anaconda-python/3.6.0


export PYTHONUNBUFFERED=1

#PYTHON=/home/mrayson/anaconda2/envs/soda/bin/python
PYTHON=python
#export PYTHONPATH=/home/mrayson/code/iwaves:/home/mrayson/code/soda

#$PYTHON -u download_sst.py -s 2017,2,18,0,0 -d 40 > sst_201702.out &
#$PYTHON -u download_sst.py -s 2017,6,11,0,0 -d 45 > sst_201706.out &
#$PYTHON -u download_sst.py -s 2017,9,4,0,0 -d 180 > sst_201709.out &
#$PYTHON -u download_sst.py -s 2016,1,1,0,0 -d 31 > sst_201601.out &
#$PYTHON -u download_sst_2018.py -s 2018,3,1,0,0 -d 31 > sst_201803_a.out &
#$PYTHON -u download_sst_2018.py -s 2018,4,1,0,0 -d 30 > sst_201804_a.out &
#$PYTHON -u download_sst_2018.py -s 2018,5,1,0,0 -d 31 > sst_201805_a.out &
#$PYTHON -u download_sst_2018.py -s 2018,6,1,0,0 -d 30 > sst_201806_a.out &
#$PYTHON -u download_sst_2018.py -s 2018,7,1,0,0 -d 31 > sst_201807_a.out &
#$PYTHON -u download_sst.py -s 2017,10,1,0,0 -d 31 > sst_201710.out &
#$PYTHON -u download_sst.py -s 2016,8,1,0,0 -d 31 > sst_201608.out &
#$PYTHON -u download_sst.py -s 2016,9,1,0,0 -d 30 > sst_201609.out &
#$PYTHON -u download_sst.py -s 2016,10,1,0,0 -d 31 > sst_201610.out &
#$PYTHON -u download_sst.py -s 2016,11,1,0,0 -d 30 > sst_201611.out &
#$PYTHON -u download_sst.py -s 2016,12,1,0,0 -d 31 > sst_201612.out &

YEAR=$1
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,1,1,0,0 -d 31 > sst_"$YEAR"01.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,2,1,0,0 -d 28 > sst_"$YEAR"02.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,3,1,0,0 -d 31 > sst_"$YEAR"03.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,4,1,0,0 -d 30 > sst_"$YEAR"04.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,5,1,0,0 -d 31 > sst_"$YEAR"05.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,6,1,0,0 -d 30 > sst_"$YEAR"06.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,7,1,0,0 -d 31 > sst_"$YEAR"07.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,8,1,0,0 -d 31 > sst_"$YEAR"08.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,9,1,0,0 -d 30 > sst_"$YEAR"09.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,10,1,0,0 -d 31 > sst_"$YEAR"10.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,11,1,0,0 -d 30 > sst_"$YEAR"11.out &
$PYTHON -u SCRIPTS/download_sst.py -s $YEAR,12,1,0,0 -d 31 > sst_"$YEAR"12.out &

wait
