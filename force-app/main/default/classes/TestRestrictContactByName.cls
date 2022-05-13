@isTest

private class TestRestrictContactByName {
    @isTest
    static void invalidLastName(){
        
        Contact contactTest = new Contact(LastName='INVALIDNAME');
        insert contactTest;

        
    }
} 