public with sharing class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> AccountIds) {
        
        Integer count = 0;
        List<Account> accounts = [Select Id, Name, Number_Of_Contacts__c, (Select ID FROM Contacts) FROM Account Where Id IN :AccountIds];

        for(Account acc : accounts){
            acc.Number_Of_Contacts__c = acc.Contacts.size(); 
        }

        update accounts;
    }
}