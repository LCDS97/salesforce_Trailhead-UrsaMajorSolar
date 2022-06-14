/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [13, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest 
private class AccountManagerTest {
    
    @isTest
    static void testGetCaseById(){
    
        Id recordId = createTestRecord();

        connection('GET',recordId);

        // Call the method to test
        Account thisAccountId = AccountManager.getAccount();

        Account thisAccount = [SELECT Id, Name FROM Account WHERE Id =: thisAccountId.Id];
        List<Contact> contactsFromAccount = [SELECT Id, Name FROM Contact WHERE AccountId =: thisAccountId.Id];

        // Verify the results
        System.assert(thisAccountId != null);
        System.assertEquals('Account Test', thisAccount.Name);
        System.assert(contactsFromAccount.size() > 0);


    }
    // Helper method
    static Id createTestRecord(){
        
        // Create a test record
        Account accountTest = new Account(
            Name = 'Account Test'
        );
    
    insert accountTest;
    
    Contact contactTest = new Contact(
        LastName = 'Test',
        AccountId = accountTest.Id
    );
    insert contactTest;

    return accountTest.Id;


    }

    // RestRequest method
    static RestRequest connection(String httpMethod, Id recordId){

        RestRequest request = new RestRequest();
        request.requestURI = 'https://curious-narwhal-pie489-dev-ed.my.salesforce.com/services/apexrest/Accounts/' + recordId + '/contacts';
        request.httpMethod = httpMethod;

        RestContext.request = request;
        return request;
    
    }


}