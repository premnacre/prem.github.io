public with sharing class account_contact{

   // public List<Contact> allDataAcc {get;set;}
   
      public List<Account> allDataAcc {get;set;}  
      
    public PageReference getAllAcc(){
    
         //   allDataAcc=new List<Contact>();
         
              allDataAcc=new List<Account>();
               
             /* for (Contact a : [SELECT c.Id, c.Name, c.MobilePhone,(SELECT Contact.LastName FROM Account.Contacts) FROM Contact c  ALL ROWS ]) {
                allDataAcc.add(a);
              }*/
            
           /* for (Account a : [SELECT c.Name, c.Phone FROM Account c  ALL ROWS ]) {
                allDataAcc.add(a);
              }*/
             
             allDataAcc=[SELECT c.Name, c.Phone FROM Account c  ALL ROWS ];
             System.debug('=== number of elements: ' + allDataAcc.size());
             System.debug('=== number of element   prem ranja debuging log');
        	/* PageReference pageref=System.currentPageReference();
       		 pageref.setRedirect(false); 
        
        	return pageref;*/
        return null;
    
    }
 



}