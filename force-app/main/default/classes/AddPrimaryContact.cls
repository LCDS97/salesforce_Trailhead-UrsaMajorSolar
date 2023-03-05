public class AddPrimaryContact implements Queueable {
    private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact contact, String state) {

        this.contact = contact;
        this.state = state;
    }

    public void execute(QueueableContext context){

        List<Account> accs = [SELECT Id, BillingState FROM Account WHERE Account.BillingState =: this.state LIMIT 200];
        List<Contact> ctts = new List<Contact>();
        
        for(Account acc : accs){
            Contact ctt = new Contact();
            ctt = this.contact.clone(false,false,false,false);
            ctt.AccountId = acc.Id;
            ctts.add(ctt);
        }

        insert ctts;
    }
}