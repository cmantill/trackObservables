#!/bin/bash

id=$1
gpack=$2
lhe=$3
had=$4
gdir=$5
odir=$6

workdir=$PWD

cp ${gdir}/Submit${gpack}.tgz .
tar xvf Submit${gpack}.tgz
cp -r tmpSubmit/* .
rm -rf tmpSubmit/
tar xvf $gpack > /dev/null

export SCRAM_ARCH=slc6_amd64_gcc630
scramv1 project CMSSW CMSSW_9_3_0
cd CMSSW_9_3_0/src/
eval `scramv1 runtime -sh`
cd $workdir
echo $PWD
./runcmsgrid.sh 10000 $RANDOM 1
#./runcmsgrid.sh 1 $RANDOM 1

export SCRAM_ARCH=slc7_amd64_gcc530
scramv1 project CMSSW CMSSW_8_0_20
cd CMSSW_8_0_20/src/
eval `scramv1 runtime -sh`
cp -r ../../IOMC .
scramv1 b
cd $workdir
echo $PWD

cmsRun ${lhe}
cmsRun LHEOut.py
mv GenEvent_ASCII.dat test.dat

cd $workdir
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$workdir/HepMC/build/install/lib/
./anaSubstructure test.dat $PWD 0 1000000 0

mkdir -p ${odir}/${gpack}/ntuplermethid/
rm ${odir}/${gpack}/ntuplermethid/processed-${id}-0-rsd.root
cp processed-test.dat-0.root ${odir}/${gpack}/ntuplermethid/processed-${id}-0-rsd.root
