# MC from HepMC

## Setup in lxplus:
```
cmsrel CMSSW_8_0_20
cd CMSSW_8_0_20/src/
cmsenv
git clone https://github.com/cmantill/trackObservables.git
```

- To run locally, compile:
```
cd trackObservables/processing/
make
```

## Jobs:
- Tarballs located in:
```
/eos/cms/store/cmst3/group/exovv/precision/
```

- To create tarball that does not exist in that directory:
```
chmod +x create_tar.sh
python3 submit.py --sample VBF --tar
```
(change output location in `create_tar.sh`)

- To test job locally:
```
cd condor/test/
source runGpack.sh 0 VBF_H_NNPDF31_13TeV_M125_slc6_amd64_gcc630_CMSSW_9_3_0.tgz LHEProd_WPH.py HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py /eos/cms/store/group/phys_exotica/dijet/dazsle/precision/ /eos/cms/store/group/phys_exotica/dijet/dazsle/precision/gen/
```
here:
- `0`: job ID number
- `VBF_H_NNPDF31_13TeV_M125_slc6_amd64_gcc630_CMSSW_9_3_0.tgz`: gridpack name
- `LHEProd_WPH.py`: lhe file
- `HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py`: pythia fragment
- `/eos/cms/store/group/phys_exotica/dijet/dazsle/precision/`: tarball directory
- `/eos/cms/store/group/phys_exotica/dijet/dazsle/precision/gen/`: output directory (must have write permissions)

- To submit:
```
python3 submit.py --sample VBF --tag Feb27 --submit -n NJOBS 
```
