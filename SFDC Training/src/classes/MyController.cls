global class MyController {
	
    //integer i=89;
    MyTest m=new MyTest();
    public Integer save() {
        return m.i;
    } 

    
    public String getName() {
        return 'MyController';
    }

    public Account getAccount() {
        return [select id, name from Account 
                 where id = :ApexPages.currentPage().getParameters().get('id')]; 
    } 
}