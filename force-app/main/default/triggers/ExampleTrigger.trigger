trigger ExampleTrigger on Contact (after insert, after delete) {
    if (Trigger.isInsert){
        Integer recordCount = Trigger.New.size();
        // Chamando o método Utility de outra classe
        EmailManager.sendMail('lucas.cds1997@gmail.com', 'Trailhead Trigger Tutorial',
                             recordCount + 'contact(s) were inserted.');
    }
    else if (Trigger.isDelete){
        // Processo depois do Delete
    }
}