#!/bin/bash

if [ -e ./input.gro ]
then
gmx grompp -f md.mdp -p /users/gmontei2/data_brubenst/gmontei2/htmd/gromacs/protein.top -c ./input.gro -o md.tpr -maxwarn 2
fi
gmx mdrun -v -stepout 10 -s md.tpr -deffnm md -c md.pdb >log.txt 2>&1
