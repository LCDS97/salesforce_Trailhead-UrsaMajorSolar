/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [13, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    
    @HttpGet
    global static Account getAccount(){

        RestRequest request = RestContext.request;

        String accountId = request.requestURI.substringBetween('Accounts/', '/contacts');

        Account result = [ SELECT 
                                Id,
                                Name,
                                (SELECT Id, Name FROM Contacts)
                                FROM Account
                                WHERE Id =: accountId];
        
        return result;
    
    }
}