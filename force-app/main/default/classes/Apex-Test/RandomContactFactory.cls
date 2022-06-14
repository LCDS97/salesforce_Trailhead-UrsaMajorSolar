/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [13, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
public with sharing class RandomContactFactory {
    
    
    public static List<Contact> generateRandomContacts (Integer numCtts, String lastName){

        List<Contact> ctts = new List<Contact>();

        for(Integer i=0; i < numCtts; i++){
            Contact c = new Contact(LastName = lastName, FirstName= String.valueOf(i));
            ctts.add(c);
        }
        return ctts;
    }
}
