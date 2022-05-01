trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List <Task> oppTask = new List<Task>();
    
    for (Opportunity opp: [SELECT Id, StageName FROM Opportunity WHERE StageName = 'Closed Won' AND Id IN :Trigger.New]){
        oppTask.add(new Task(Subject='Follow Up Test Task',
                            WhatId=opp.id));
    }
    if(oppTask.size()>0){
        insert oppTask;
    }
}