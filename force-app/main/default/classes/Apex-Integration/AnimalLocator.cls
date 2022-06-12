/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Trailhead.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
public with sharing class AnimalLocator {

    private class cls_animal {
		private Integer id;	
		private String name;	
		private String eats;	
		private String says;	
	}    
    
    private class JSONOutput{
	    private cls_animal animal;

    }

    @TestVisible
    private static HttpResponse sendRequest(String method, Integer id){

        Http http = new Http();
        HttpRequest request = new HttpRequest();

        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod(method);

        HttpResponse response = http.send(request);

        return response;
    }
    
    
    public static String getAnimalNameById(Integer Id){
        String resultString;
        HttpResponse response;

        response = AnimalLocator.sendRequest('GET',Id);
        
        if(response.getStatusCode() == 200){
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            jsonOutput resultJSON = (jsonOutput) JSON.deserialize(response.getBody(), jsonOutput.class);
            resultString = resultJSON.animal.name;
            
        }
        return resultString;

    }
}
