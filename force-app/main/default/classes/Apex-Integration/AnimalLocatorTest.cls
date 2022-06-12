/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11, 06, 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest
private class AnimalLocatorTest{


    @isTest
    static void testGetCallout(){
        
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());

        String resultString = AnimalLocator.getAnimalNameById(2);


        System.assertNotEquals(null, resultString, 'The callout returned a null string');
        System.assertEquals('bear', resultString, 'The response string must be equal');

    }
}