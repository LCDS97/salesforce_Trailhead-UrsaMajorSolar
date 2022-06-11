/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Trailhead.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
public with sharing class AnimalsCallouts {
    
    public static HttpResponse get(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        HttpResponse response = http.send(request);

        // If the request is successful, it will parse the JSON response.
        if(response.getStatusCode() == 200){
            
            // Deserialize the JSON string into collections of primitve data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            
            // Cast the values in the 'animals' key as list
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals: ');

            for(Object animal : animals){
                System.debug(animal);
            }
        }
        return response;
    }

    public static HttpResponse post(String animal){
        
        Http http = new Http();
        httpRequest request = new HttpRequest();

        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');

        //Set the body as a JSON object
        request.setBody('{"name":"' + animal + '"}');

        HttpResponse response = http.send(request);

        //Parse the JSON response
        if(response.getStatusCode() != 201){
            System.debug('The status code return was not expected:' + response.getStatusCode() + ' ' + response.getStatus());

        } else {
            System.debug(response.getBody());
        }
        
        return response;
    }
}