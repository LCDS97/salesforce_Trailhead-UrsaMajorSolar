public class LeadProcessor implements
    Database.Batchable<sObject>, Database.Stateful {
    
    public Integer recordsProcessed = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT Id, LeadSource FROM Lead'
        );
    }

    public void execute(Database.BatchableContext bc, List<Lead> leads){
        for(Lead lead : leads){
            lead.LeadSource = 'Dreamforce';
            recordsProcessed = recordsProcessed + 1;
        }

        update leads;

    }

    public void finish(Database.BatchableContext bc){
        System.debug(recordsProcessed + ' records processed. Shazam!');
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        // call some utility to register a log
        LogBatch__c log = new LogBatch__c(Job__c = String.valueOf(job), Records_Processed__c = recordsProcessed);
        insert log;
    }
}
