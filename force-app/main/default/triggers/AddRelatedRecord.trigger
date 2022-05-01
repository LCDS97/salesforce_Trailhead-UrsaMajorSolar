trigger AddRelatedRecord on Account (after insert, after update) {
	List <Opportunity> oppList = new List<Opportunity>();
    
      // Adicionar Oportunidade para cada conta se ja não possui uma
    // Pegar as e iterar contas nesta Trigger que não tem oportunidades  

    // Itera por cada conta
	for (Account a: [SELECT Id, Name FROM Account
                    		WHERE Id IN :Trigger.New AND
                     Id NOT IN (SELECT AccountId FROM Opportunity)]){
                         // Adicionar oportunida padrão para a conta
                         oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                                    StageName='Prospecting',
                                                    CloseDate=System.today().addMonths(1),
                                                    AccountId=a.Id));
              
                     }
    if (oppList.size() > 0){
        insert oppList;
    }
}