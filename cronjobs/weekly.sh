#!/bin/bash

export PATH=$PATH:/opt/torque/bin

cd /home/arnfinn/cronjobs/

rm *.pbs.*

for i in 2013-*.pbs; do
    qsub $i
done

#for i in long-*.pbs; do
#    qsub $i
#done

for i in oRSP*release.pbs; do
    qsub $i
done

#for i in oRSP-*debug.pbs; do
#    qsub $i
#done
