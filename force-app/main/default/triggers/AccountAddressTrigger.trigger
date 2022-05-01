trigger AccountAddressTrigger on Account (before insert, before update) {
	
    for (Account a: Trigger.New){
        If(a.Match_Billing_address__c == true){
            a.ShippingPostalCode = a.BillingPostalCode;
        }
    }
}