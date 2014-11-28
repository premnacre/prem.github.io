public class pageReferenceTest{
 /*   
    public PageReference gotoPage(){
    PageReference p = new PageReference('/apex/test2');
    return p;
}

// Test method 2
public PageReference gotoPage(){
    return Page.test2;
}
*/
// Test method 3
public PageReference gotoPage(){
    Account a = [select id from account limit 1];
    PageReference p = new ApexPages.StandardController(a).view();
    return p;
}

}