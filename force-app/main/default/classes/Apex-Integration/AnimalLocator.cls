/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
public with sharing class AnimalLocator {

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

            Object animal = (Object) result.get('animal');

            resultString = String.valueOf(animal);
            
        }
        return resultString;

    }
}
