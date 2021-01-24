#!/bin/bash
#
#SBATCH --job-name=swarmtest
#SBATCH --partition=batch
#SBATCH --cpus-per-task=32
#SBATCH --mem=32000
#SBATCH --priority=None
#SBATCH -D /gpfs/data/brubenst/gmontei2/htmd/gromacs/adaptivemd/input/e1s1_generators
#SBATCH --output=slurm.%N.%j.out
#SBATCH --error=slurm.%N.%j.err
#SBATCH --export=ACEMD_HOME,HTMD_LICENSE_FILE
#SBATCH --time=4320
#SBATCH --account=brubenst-condo

trap "touch /gpfs/data/brubenst/gmontei2/htmd/gromacs/adaptivemd/input/e1s1_generators/jobqueues.done" EXIT SIGTERM

module load gromacs/2018.2

cd /gpfs/data/brubenst/gmontei2/htmd/gromacs/adaptivemd/input/e1s1_generators
/gpfs/data/brubenst/gmontei2/htmd/gromacs/adaptivemd/input/e1s1_generators/run.sh
mv *.xtc /gpfs/data/brubenst/gmontei2/htmd/gromacs/adaptivemd/data/e1s1_generators