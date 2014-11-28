@isTest
public with sharing class textInputConTest {
   
      static TestMethod void saveListTest()
      {
           textInputCon tic=new textInputCon();
           tic.saveList();
           System.assertNotEquals('',tic.inputText0);
           System.assertNotEquals('',tic.inputText1);
           System.assertNotEquals('',tic.inputText2);
           System.assertNotEquals(null,tic.salesObjInst);                                                        
     } 
}