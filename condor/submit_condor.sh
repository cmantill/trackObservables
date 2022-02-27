#!/bin/bash

file=VBF_H_NNPDF31_13TeV_M125_slc6_amd64_gcc630_CMSSW_9_3_0.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 3000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=ttH_inclusive_hdamp_NNPDF31_13TeV_M125.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HZJ_HanythingJ_NNPDF31_13TeV_M125.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWminusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had
exit

#file=TT_hdamp_NNPDF31_NNLO_had.tgz
#lhe=LHEProd_pow.py
#had=Hadronizer_TuneCUETP8M1_13TeV_powheg2.py
#./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=wellnu012j_wpt-600toinf_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
lhe=LHEProd_WJets.py
had=Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=DYJetsToLL_012j_Zpt-250To400_5f_NLO_FXFX_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
lhe=LHEProd_WJets.py
had=Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=DYJetsToLL_012j_Zpt-400To650_5f_NLO_FXFX_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
lhe=LHEProd_WJets.py
had=Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=DYJetsToLL_012j_Zpt-650Toinf_5f_NLO_FXFX_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
lhe=LHEProd_WJets.py
had=Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=gg_H_quark-mass-effects_NNPDF30_13TeV_M125_tarball.tar.gz
lhe=LHEProd_pow.py
had=Hadronizer_TuneCUETP8M1_13TeV_powheg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=QCD_HT2000toInf_tarball.tar.xz  
lhe=LHEProdQCD.py 
had=Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=QCD_HT1500to2000_tarball.tar.xz  
lhe=LHEProdQCD.py 
had=Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=QCD_HT1000to1500_tarball.tar.xz
lhe=LHEProdQCD.py 
had=Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=QCD_HT700to1000_tarball.tar.xz  
lhe=LHEProdQCD.py 
had=Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=QCD_HT500to700_tarball.tar.xz  
lhe=LHEProdQCD.py 
had=Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=QCD_HT300to500_tarball.tar.xz  
lhe=LHEProdQCD.py 
had=Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=ggh012j_ptj20_nocard_tarball.tar.xz
./bsub_condor.sh runH12j.sh 6000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=ggHZ_HanythingJ_NNPDF31_13TeV_M125_Vhadronic.tgz
lhe=LHEProd_ggHZ.py
had=ggHZ_HanythingJ_NNPDF31_13TeV_M125_cfg.py 
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=ggHZ_HanythingJ_NNPDF31_13TeV_M125_Vleptonic.tgz
lhe=LHEProd_ggHZ.py
had=ggHZ_HanythingJ_NNPDF31_13TeV_M125_cfg.py 
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=ggHZ_HanythingJ_NNPDF31_13TeV_M125_Vneutrinos.tgz
lhe=LHEProd_ggHZ.py
had=ggHZ_HanythingJ_NNPDF31_13TeV_M125_cfg.py 
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=VBF_H_NNPDF31_13TeV_M125_slc6_amd64_gcc630_CMSSW_9_3_0.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 3000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=ttH_inclusive_hdamp_NNPDF31_13TeV_M125.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HZJ_HanythingJ_NNPDF31_13TeV_M125.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWminusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz
lhe=LHEProd_WPH.py
had=HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had

file=wqq_pt300_100_tarball.tar.xz
lhe=LHEProd.py
had=Hadronizer_TuneCUETP8M1_13TeV_generic_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had


file=zqq_pt300_100_tarball.tar.xz
lhe=LHEProd.py
had=Hadronizer_TuneCUETP8M1_13TeV_generic_LHE_pythia8_cff.py
./bsub_condor.sh runGpack.sh 1000 $x $file /afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/tmp2/trackObservables/processing/ $PWD $lhe $had


