public class actionSupportController {
   // Integer count = 0;
     Integer count{get;set;}
     
     public actionSupportController(){
     count=0;
     }
    public PageReference incrementCounter() {
            count++;
            return null;
    }
 
    public PageReference decrementCounter() {
            count--;
            return null;
    }
 
    public Integer getCount() {
        return count;
    }
}