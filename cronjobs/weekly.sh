#!/bin/bash
# Written by Arnfinn Hykkerud Steindal
# adapted by Roberto Di Remigio

source /etc/bashrc

export PATH=$PATH:/opt/torque/bin

cd /home/roberto/Workspace/cdash-recipes/psi4/weekly
rm -f *.o*
rm -f *.e*

DAY=$(date +%a)

for i in RDR-gcc4.9.1-asan.pbs RDR-gcc4.9.1-tsan.pbs RDR-gcc4.9.1-ubsan.pbs RDR-gcc4.9.1-valgrind.pbs
do
    qsub $i
done
