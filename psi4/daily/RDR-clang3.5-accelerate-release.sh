#!/bin/bash

PSI4_TMPDIR=/Users/roberto/Scratch/RDR-clang3.5-accelerate-release
mkdir -p $PSI4_TMPDIR
export PSI4_TMPDIR
export CTEST_MAKE_NUM_PROCS=6

TMP_DIR=/Users/roberto/Scratch/tmprunpsi4/RDR-clang3.5-accelerate-release
mkdir -p $TMP_DIR

git clone git@github.com:robertodr/psi4.git $TMP_DIR

cd $TMP_DIR

./setup --fc=gfortran --cc=clang --cxx=clang++ --type=release --plugins=on --accelerate -D BUILDNAME=RDR-clang3.5-accelerate-release -D SITE=merzbow

cd $TMP_DIR/obj

export PSI4DATADIR=$TMP_DIR/lib
mkdir -p $PSI4_TMPDIR/psi4scr
export PSI4_SCRATCH=$PSI4_TMPDIR/psi4scr

ctest -D Nightly -j6

cd
rm -rf $PSI4_TMPDIR $TMP_DIR

exit 0
