public with sharing class add_leadAcc {

    public Lead lead=null;
    public List<Lead> leadList=null;
    public String message{get;set;}
    public PageReference addAllLeadAcc() {
        leadList=new List<Lead>();
            for(Integer i=1;i<=20000;i++){
             lead=new Lead();
             lead.company='popcornApps'+i;
             lead.email='bit.prem'+i+'@popcornApps.com';
           //  lead.Name='prem ranjan'+i;
             lead.Phone='8008730912';
             lead.Website='www.popcornapps.com';
             lead.LastName='prem'+i;
             leadList.add(lead);
           }
    //   insert leadList; 
       message='successfully added lead'+leadList.size();
       return null;
       }
     public PageReference removeRecord(){
         leadList=new List<Lead>();
         leadList=[SELECT Phone From Lead where Phone='8008730912' limit 9999];
         delete leadList;
          message='successfully deleted lead '+leadList.size();
         return null;
     } 
}