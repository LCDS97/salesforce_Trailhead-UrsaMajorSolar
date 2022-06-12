/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@RestResource(urlMapping='/Cases/*')

global with sharing class CaseManager{

    @HttpGet
    global static Case getCaseById(){

        RestRequest request = RestContext.request;

        // Grab the caseId from the end of the URL
        String caseId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/')+1   
        );

        Case result = [ SELECT
                            CaseNumber,
                            Subject,
                            Status,
                            Origin,
                            Priority
                        FROM
                            Case
                        WHERE
                            Id =: caseId];

        return result;
    }

    @HttpPost
    global static Id createCase(
                            String subject,
                            String status,
                            String origin,
                            String priority){

        Case thisCase = new Case(
            Subject = subject,
            Status = status,
            Origin = origin,
            Priority = priority);

    insert thisCase;
    return thisCase.Id;
    }

    @HttpDelete
    global static void deleteCase(){
        
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/') + 1
        );
    
        Case thisCase = [SELECT
                            Id
                        FROM
                            Case
                        WHERE
                            Id = :caseId];
        delete thisCase;
    }

    @HttpPut
    global static ID upsertCase(String subject,
                                String status,
                                String origin,
                                String priority,
                                String id){

    
      Case thisCase = new Case(
            Id = id,
            Subject= subject,
            Status = status,
            Origin = origin,
            Priority = priority
      );
      
      // Match case by Id, if Present.
      // Otherwise, create new Case.

      upsert thisCase;

      return thisCase.Id;
    }

    @HttpPatch
    global static Id updateCaseFields(){
        
        RestRequest request = RestContext.request;

        String caseId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/') + 1
        );

        Case thisCase = [SELECT
                            Id
                        FROM
                            Case
                        WHERE
                            Id =: caseId];
        // Deserialize the JSON string into name-value pairs
        Map<String, Object> params = (Map<String, Object>) JSON.deserializeUntyped(request.requestBody.toString());
        
        // Iterate through each parameter field and value
        for(String fieldName : params.keySet()){
            
            // Set the field and value on the Case sObject
            thisCase.put(fieldName, params.get(fieldName));
        }
        
        update thisCase;
        return thisCase.Id;
    }

    
}