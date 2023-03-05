@isTest
public with sharing class AccountProcessorTest {
    
    @isTest
    public static void AccountProcessorTest() {
        Account acc = new Account(
            Name = 'Test'
        );

        insert acc;

        List<Contact> ctts = new List<Contact>();

        Contact c = new Contact(LastName = 'lastName', FirstName= 'Test', AccountId = acc.Id);
        insert c;

        List<Id> lstAccountIds = new List<Id>();
        lstAccountIds.add(acc.Id);

        Test.startTest();
        AccountProcessor.countContacts(lstAccountIds);
        Test.stopTest();

        Account accAssert = [SELECT Id, Number_Of_Contacts__c FROM Account LIMIT 1];
        System.assertEquals(1,accAssert.Number_Of_Contacts__c);
    }
}