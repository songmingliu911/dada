#! /bin/bash

pmemd -O -i min1.in -o min1.out -p Mpro-4wi_solvated.prmtop -c Mpro-4wi_solvated.inpcrd -r Mpro-4wi_min_01.rst -ref Mpro-4wi_solvated.inpcrd -x Mpro-4wi_min_01.mdcrd
pmemd -O -i min2.in -o min2.out -p Mpro-4wi_solvated.prmtop -c Mpro-4wi_min_01.rst -r Mpro-4wi_min_02.rst -x Mpro-4wi_min_02.mdcrd -ref Mpro-4wi_min_01.rst
pmemd.cuda -O -i heat.in -o min3.out -p Mpro-4wi_solvated.prmtop -c Mpro-4wi_min_02.rst -r Mpro-4wi_min_03.rst -x Mpro-4wi_min_03.mdcrd -ref Mpro-4wi_min_02.rst
pmemd.cuda -O -i density.in -o min4.out -p Mpro-4wi_solvated.prmtop -c Mpro-4wi_min_03.rst -r Mpro-4wi_min_04.rst -x Mpro-4wi_min_04.mdcrd -ref Mpro-4wi_min_03.rst
pmemd.cuda -O -i equil.in -o min5.out -p Mpro-4wi_solvated.prmtop -c Mpro-4wi_min_04.rst -r Mpro-4wi_min_05.rst -x Mpro-4wi_min_05.mdcrd -ref Mpro-4wi_min_04.rst
pmemd.cuda -O -i prod.in -o min6.out -p Mpro-4wi_solvated.prmtop -c Mpro-4wi_min_05.rst -r Mpro-4wi_min_06.rst -x Mpro-4wi_min_06.mdcrd -ref Mpro-4wi_min_05.rst
