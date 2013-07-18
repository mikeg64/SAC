#!/bin/bash
#$ -l h_rt=99:00:00
#$ -cwd
#$ -l arch=intel*
#$ -l mem=6G
#$ -pe openmpi-ib 16
#$ -N SAC


#source /etc/profile.d/modules.sh add mpi/pgi/openmpi/1.4.3
module add mpi/pgi/openmpi/1.6.4



echo "SAC will run on the following nodes"
cat $PE_HOSTFILE
echo Starting vac now.
/usr/local/mpi/pgi/openmpi/1.6.4/bin/mpirun vac

#echo "Starting conversion to h5"
#/usr/local/mpi/pgi/openmpi/1.6.4/bin/mpirun convh5
