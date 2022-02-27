#!/bin/bash                                                                                                                                                                                                                                                                  

args=`echo "${@:3}"`

home=`pwd`
gpack=$1
anadir=$2
dir=$3
lhe=$4
had=$5
echo $gpack" "$anadir" "$dir" "$lhe" "$had

cd /tmp/${USER}
mkdir /tmp/${USER}/tmpSubmit/
cd tmpSubmit
cp $dir/gpacks/$gpack .
cp $dir/config/$lhe .
cp $dir/config/LHEOut.py  .
cp $dir/config/$had .
cp -r $dir/IOMC .
cp ${anadir}/anaSubstructure .
cp -r /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/HepMC/ .
cd HepMC/build/
make
cd /tmp/${USER}/
tar czvf Submit${gpack}.tgz  tmpSubmit
# use this if needed
cp  Submit${gpack}.tgz /eos/cms/store/group/phys_exotica/dijet/dazsle/precision/
#cp  Submit${gpack}.tgz /eos/cms/store/cmst3/group/exovv/precision/
rm -rf tmpSubmit
rm Submit${gpack}.tgz
