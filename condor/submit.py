#!/usr/bin/python

import argparse
import os

gpack_dict = {
    "VBF": [
        "VBF_H_NNPDF31_13TeV_M125_slc6_amd64_gcc630_CMSSW_9_3_0.tgz",
        "LHEProd_WPH.py", 
        "HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py",
    ],
    "ttH": [
        "ttH_inclusive_hdamp_NNPDF31_13TeV_M125.tgz",
        "LHEProd_ttH.py",
        "ttH_inclusive_hdamp_NNPDF31_13TeV_M125_cfg.py",
    ],
    "HZ": [
        "HZJ_HanythingJ_NNPDF31_13TeV_M125.tgz",
        "LHEProd_WPH.py",
        "HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py",
    ],
    "HWm": [
        "HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWminusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz",
        "LHEProd_WPH.py",
        "HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py",
    ],
    "HWp": [
        "HWJ_slc6_amd64_gcc630_CMSSW_9_3_0_HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive.tgz",
        "LHEProd_WPH.py",
        "HWplusJ_HanythingJ_NNPDF31_13TeV_M125_Vinclusive_cfg.py",
    ],
    "TT": [
        "TT_hdamp_NNPDF31_NNLO_had.tgz",
        "LHEProd_pow.py",
        "Hadronizer_TuneCUETP8M1_13TeV_powheg2.py",
    ],
    "WLNu": [
        "wellnu012j_wpt-600toinf_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz",
        "LHEProd_WJets.py",
        "Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py",
    ],
    "DYLL-250To400": [
        "DYJetsToLL_012j_Zpt-250To400_5f_NLO_FXFX_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz",
        "LHEProd_WJets.py",
        "Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py",
    ],
    "DYLL-400To650": [
        "DYJetsToLL_012j_Zpt-400To650_5f_NLO_FXFX_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz",
        "LHEProd_WJets.py",
        "Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py",
    ],
    "DYLL-650ToInf": [
        "DYJetsToLL_012j_Zpt-650Toinf_5f_NLO_FXFX_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz",
        "LHEProd_WJets.py",
        "Hadronizer_TuneCUETP8M1_13TeV_aMCatNLO_FXFX_5f_max2j_LHE_pythia8_cff.py",
    ],
    "ggH": [
        "gg_H_quark-mass-effects_NNPDF30_13TeV_M125_tarball.tar.gz",
        "LHEProd_pow.py",
        "Hadronizer_TuneCUETP8M1_13TeV_powheg.py",
    ],
    "QCD-2000ToInf": [
        "QCD_HT2000toInf_tarball.tar.xz",
        "LHEProdQCD.py",
        "Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py",
    ],
    "QCD-1500To2000": [
        "QCD_HT1500to2000_tarball.tar.xz",
        "LHEProdQCD.py",
        "Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py",
    ],
    "QCD-1000To1500": [
        "QCD_HT1000to1500_tarball.tar.xz",
        "LHEProdQCD.py",
        "Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py",
    ],
    "QCD-700To1000": [
        "QCD_HT700to1000_tarball.tar.xz",
        "LHEProdQCD.py",
        "Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py",
    ],
    "QCD-500To700": [
        "QCD_HT500to700_tarball.tar.xz",
        "LHEProdQCD.py",
        "Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py",
    ],
    "QCD-300To500": [
        "QCD_HT500to700_tarball.tar.xz",
        "LHEProdQCD.py",
        "Hadronizer_TuneCUETP8M1_13TeV_MLM_4f_max4j_LHE_pythia8_cff.py",
    ],


}
phil_dir = "/afs/cern.ch/user/p/pharris/pharris/public/bacon/prod/CMSSW_8_0_20/src/Study/trackObservables/processing/"
ana_dir = "/afs/cern.ch/user/c/cmantill/work/public/train/CMSSW_8_0_20/src/trackObservables/processing/"
tar_dir = "/eos/cms/store/group/phys_exotica/dijet/dazsle/precision/"

def main(args):
    sample = args.sample
    tag = args.tag
    gpack,lhe,had = gpack_dict[sample]

    if args.tar:
        cmd_tar = f"./create_tar.sh {gpack} {ana_dir} {phil_dir} {lhe} {had}"
        os.system(cmd_tar)
        exit(1)
        
    # create job
    os.system(f"mkdir -p {tag}/logs/")
    localcondor = f"{tag}/submit_{sample}_{tag}.jdl"
    localexecutable = "runGpack.sh"
    condor_templ_file = open("submit_templ.jdl")
    condor_file = open(localcondor, "w")
    
    # args: gpack lhe had tar_dir out_dir
    out_dir = args.outdir
    args_line = f"{gpack} {lhe} {had} {tar_dir} {out_dir}"
    for line in condor_templ_file:
        line = line.replace("EXECUTABLE", localexecutable)
        line = line.replace("ARGS", args_line)
        line = line.replace("DIR", f"{tag}")
        line = line.replace("NJOBS", "%i"%args.njobs)
        condor_file.write(line)
    condor_file.close()
    condor_templ_file.close()

    if args.submit:
        os.system('condor_submit %s' % localcondor)    

if __name__ == "__main__":
            
    parser = argparse.ArgumentParser()
    parser.add_argument("--tag",       dest="tag",       default="Test",                help="job tag", type=str)
    parser.add_argument('--sample',    dest='sample',    choices=gpack_dict.keys(),     help="sample", required=True)
    parser.add_argument("--tar",       dest='tar',       action='store_true',           help="create tar")
    parser.add_argument("--submit",    dest='submit',    action='store_true',           help="submit jobs when created")
    parser.add_argument("--outdir",    dest="outdir",    default="/eos/cms/store/group/phys_exotica/dijet/dazsle/precision/gen/", help="output directory", type=str)
    parser.add_argument("--njobs","-n",dest='njobs',     default=1,                     help="num of jobs", type=int) # default of events per job is 10000 - see runGpack
    args = parser.parse_args()

    main(args)
