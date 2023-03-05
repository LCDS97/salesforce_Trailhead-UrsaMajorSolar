@isTest
public class LeadProcessorTest {

    @TestSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();

        for(Integer i=0;i<200;i++){
            leads.add(new Lead(FirstName= 'Lead ', LastName= String.valueOf(i), Company = 'Company ' +i));
        }
        
        insert leads;
    }
    @isTest
    static void LeadProcessorTest() {
        Test.startTest();
            LeadProcessor lp = new LeadProcessor();
            Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        Lead ld = [SELECT Id, LeadSource FROM Lead LIMIT 1];
        System.assertEquals('Dreamforce', ld.LeadSource);
    }
}