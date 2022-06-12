/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest

global class ParkServiceMock implements WebServiceMock {
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
        ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();

        List<String> parkList = new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park','Bavarian Forest National Park'};
    
        response_x.return_x = parkList;
        response.put('response_x', response_x);
    }
}