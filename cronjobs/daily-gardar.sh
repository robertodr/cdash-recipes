#!/bin/bash
# Written by Arnfinn Hykkerud Steindal
# adapted by Roberto Di Remigio

export PATH=$PATH:/opt/torque/bin:/opt/gold/bin

cd /home/roberto/Workspace/cdash-recipes/psi4/daily/gardar.nhpc.hi.is
rm -f *.o*
rm -f *.e*

DAY=$(date +%a)

for i in RDR-*.pbs; do
    qsub $i
done
