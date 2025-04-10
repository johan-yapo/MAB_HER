#!/bin/sh

#PBS -e standard_error
#PBS -l nodes=2,walltime=48:00:00
#PBS -N Ni2ZnB2_Ni_Brdg_scf

module load vasp

mpirun /opt/vasp/5.4.4/bin/vasp_std

