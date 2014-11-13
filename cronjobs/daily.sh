#!/bin/bash
# Written by Arnfinn Hykkerud Steindal
# adapted by Roberto Di Remigio

export PATH=$PATH:/opt/torque/bin

cd /home/roberto/Workspace/cdash-recipes/cronjobs
rm *.o*
rm *.e*

DAY=$(date +%a)

for i in RDR-*.pbs; do
    qsub $i
done
