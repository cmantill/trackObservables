#ifndef __FASTJET_CONTRIB_ENERGYCORRELATIONS_HH__
#define __FASTJET_CONTRIB_ENERGYCORRELATIONS_HH__
#include "fastjet/PseudoJet.hh"
#include <vector>
#include <map>
#include "TMath.h"
#include "TString.h"


class ECFNManager {
public:
  // just a bunch of floats and bools to hold different values of normalized ECFs
  ECFNManager() {
    flags["3_1"]=true; 
    flags["3_2"]=true; 
    flags["3_3"]=true; 
    flags["4_1"]=true; 
    flags["4_2"]=true; 
    flags["4_3"]=false; 
  }
  ~ECFNManager() {}

  std::map<TString,double> ecfns; // maps "N_I" to ECFN
  std::map<TString,bool>   flags; // maps "N_I" to flag

  bool doN1=true, doN2=true, doN3=true, doN4=true;
  //bool doN1,doN2,doN3,doN4;
  inline void clear() { for (std::map<TString,double>::iterator it=ecfns.begin(); it!=ecfns.end(); ++it) it->second = -999;}
};


class EnergyCorrelations { 
 public:
  EnergyCorrelations();
  ~EnergyCorrelations(){}
  double DeltaR2(fastjet::PseudoJet j1, fastjet::PseudoJet j2);
  double DeltaR2(double iEta1,double iPhi1,double iEta2,double iPhi2);
  void calcECF(double beta, std::vector<fastjet::PseudoJet> &constituents, double *n1=0, double *n2=0, double *n3=0, double *n4=0);
  void calcECFN(double beta, std::vector<fastjet::PseudoJet> &constituents, bool iClear=false, bool useMin=true);
  inline double N2(){return double(manager->ecfns["3_2"])/TMath::Power(manager->ecfns["2_1"],2.);}
  inline double M2(){return double(manager->ecfns["3_1"])/double(manager->ecfns["2_1"]);}
  inline double D2(){return double(manager->ecfns["3_3"])/TMath::Power(manager->ecfns["2_1"],3.);}
  inline double N3(){return double(manager->ecfns["4_2"])/TMath::Power(manager->ecfns["3_1"],2.);}
  inline double M3(){return double(manager->ecfns["4_1"])/double(manager->ecfns["3_1"]);}
  //double D3(){manager->ecfns("4_4")*manager->ecfns("2_2")**3/manager->ecfns("3_3")/manager->ecfns("3_3")/manager->ecfns("3_3");}
  ECFNManager *manager;
};

#endif
