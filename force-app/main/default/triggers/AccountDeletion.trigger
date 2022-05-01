trigger AccountDeletion on Account (before delete) {
	// Prevenir deleção de contas que tenha uma oportunidades relacionada
	for (Account a : [SELECT Id FROM Account
                     		 WHERE Id IN (SELECT AccountId FROM Opportunity) AND
                      Id IN :Trigger.old]){
                          Trigger.oldMap.get(a.Id).addError(
                          	'Cannot delete account with related opportunities.'
                          );
                      }
}