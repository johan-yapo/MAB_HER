#!/bin/sh

#PBS -e standard_error
#PBS -l nodes=3,walltime=48:00:00
#PBS -N Ni3ZnB2_Zn_1H_relax_

module load vasp

mpirun /opt/vasp/5.4.4/bin/vasp_std

