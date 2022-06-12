/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11 06 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
@isTest
private class AwesomeCalculatorTest{
    
    @isTest
    static void testCallout(){
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new CalculatorCalloutMock());

        // Call the method that invokes a callout
        Double x = 1.0;
        Double y = 2.0;
        Double result = AwesomeCalculator.add(x, y);

        // Verify that a fake result is returned
        System.assertEquals(3.0, result);
    }
}