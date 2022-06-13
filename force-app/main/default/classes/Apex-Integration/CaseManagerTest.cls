/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [13, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest 
private class CaseManagerTest {
    
    @isTest
    static void testGetCaseById(){
        Id recordId = createTestRecord();
/* 
    // Set up a test request
    RestRequest request = new RestRequest();
    request.requestURI = 'https://curious-narwhal-pie489-dev-ed.my.salesforce.com//services/apexrest/Cases/' + recordId;
    
    request.httpMethod = 'GET';
    RestContext.request = request; */
    connection('GET',recordId);

    // Call the method to test
    Case thisCase = CaseManager.getCaseById();

    // Verify the results
    System.assert(thisCase != null);
    System.assertEquals('Test record', thisCase.Subject);

    }

    @isTest
    static void testCreateCase(){
        
        // Call the method to test
        Id thisCaseId = CaseManager.createCase('Ferocius chipmunk', 'New', 'Phone', 'Low');

        // Verify results
        Case thisCase = [SELECT Id, Subject FROM Case WHERE Id =: thisCaseId];

        System.assert(thisCase != null);
        System.assertEquals('Ferocius chipmunk', thisCase.Subject);
    }

    @isTest
    static void testDeleteCase(){
        
        Id recordId = createTestRecord();
        
        connection('DELETE', recordId);

        // Call method to test
        CaseManager.deleteCase();

        // Verify record is deleted
        List<Case> cases = [SELECT Id From Case WHERE Id =: recordId];
        System.assert(cases.size() == 0);

    }

    @isTest 
    static void testUpsertCase(){

        // 1. Insert new record
        Id case1Id = CaseManager.upsertCase('Ferocious chipmunk', 'New', 'Phone', 'Low', null);

        // Verify new record was created
        System.assert(case1Id != null);

        Case case1 = [SELECT Id, Subject FROM Case WHERE Id =: case1Id];

        System.assert(case1 != null);
        System.assertEquals(case1.Subject,'Ferocious chipmunk');

        // 2. Update status of existing record to Working
        Id case2Id = CaseManager.upsertCase('Ferocious chipmunk', 'Working', 'Phone', 'Low', case1Id);

        // Verify record was updated
        System.assertEquals(case1Id, case2Id);

        Case case2 = [SELECT Id, Status FROM Case WHERE Id =: case2Id];

        System.assert(case2 != null);
        System.assertEquals(case2.Status, 'Working');

    }

    @isTest
    static void testUpdateCaseFields(){

        RestRequest request;

        Id recordId = createTestRecord();
        request = connection('PATCH', recordId);
        request.addHeader('Content-Type', 'application/json');
        request.requestBody = Blob.valueOf('{"status": "Working"}');

        RestContext.request = request;

        // Update status of existing record to Working
        Id thisCaseId = CaseManager.updateCaseFields();

        // Verify record was updated
        System.assert(thisCaseId != null);

        Case thisCase = [SELECT Id, Status from Case WHERE Id =: thisCaseId];

        System.assert(thisCase != null);
        System.assertEquals(thisCase.Status, 'Working');
    
    }


    // Helper method
    static Id createTestRecord(){
        
        // Create a test record
        Case caseTest = new Case(
            Subject = 'Test record',
            Status = 'New',
            Origin = 'Phone',
            Priority= 'Medium'
        );
    insert caseTest;
    return caseTest.Id;
    }

    // RestRequest method
    static RestRequest connection(String httpMethod, Id recordId){

        RestRequest request = new RestRequest();
        request.requestURI = 'https://curious-narwhal-pie489-dev-ed.my.salesforce.com/services/apexrest/Cases/' + recordId;
        request.httpMethod = httpMethod;

        RestContext.request = request;
        return request;
    
    }
}