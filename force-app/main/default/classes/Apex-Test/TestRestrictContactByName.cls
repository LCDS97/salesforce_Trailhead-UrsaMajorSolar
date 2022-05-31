@isTest

private class TestRestrictContactByName {
    @isTest
    static void invalidLastName(){
        String messageError;

        List<Contact> lstContacts = new List<Contact>();
        Contact contactTest = new Contact(LastName='INVALIDNAME', email='c2@email.com');
        lstContacts.add(contactTest);

        Test.startTest();
        
            Database.SaveResult result = Database.insert(contactTest, true);

        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
        
    }
} 