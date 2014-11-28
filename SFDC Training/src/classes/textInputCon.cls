public with sharing class textInputCon {
     public String inputText0{get;set;} 
     public String inputText1{get;set;} // input text1 value  from vf
     public String inputText2{get;set;} // input text2 value  from vf
     public List<Test__c> allData{get;set;}
     public String message{get;set;}
     public Test__c  salesObjInst = new Test__c(); //  Either salesObj is standard or custom object
     public void saveList(){
            salesObjInst.Name =  inputText0;
            salesObjInst.Text1__c =  inputText1;  // Field Assignment
            salesObjInst.Text2__c =  inputText2;  // Field Assignment
            insert  salesObjInst; // DML Operations
            allData=new List<Test__c>();
           for (Test__c a : [SELECT Id, Name, Text1__c,Text2__c FROM Test__c]) {
                allData.add(a);
            }
            // System.currentPageReference();
           //   System.today();
           message ='Welcome to '+inputText0+ ' organisation';
      }  
}