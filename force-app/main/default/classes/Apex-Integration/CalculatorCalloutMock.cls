/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11 06 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest

global class CalculatorCalloutMock implements WebServiceMock {
    
    global void doInvoke(
        Object stub,
        Object request,
        Map<String,Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
        )
        {
            // Start - Specify the response you want to send
            calculatorServices.doAddResponse response_x = new calculatorServices.doAddResponse();
            response_x.return_x = 3.0;
            // End
            response.put('response_x', response_x);
        }
}