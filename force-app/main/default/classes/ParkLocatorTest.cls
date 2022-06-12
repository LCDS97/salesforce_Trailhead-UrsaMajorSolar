/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest
private class ParkLocatorTest{
    
    @isTest
    static void testCallout(){
        
        Test.setMock(WebServiceMock.class, new ParkServiceMock());

        
        List<String> expectedParkList = new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park','Bavarian Forest National Park'};

        String x = 'Germany';

        String[] result = ParkLocator.country(x);

        System.assertNotEquals(null, result, 'List of Parks by Country cannot be null');
        System.assertEquals(expectedParkList, result);

    }
}