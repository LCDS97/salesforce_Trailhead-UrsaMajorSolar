/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11 06 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
public class AwesomeCalculator {
    
    public static Double add(Double x, Double y){
        calculatorServices.CalculatorImplPort calculator =
            new calculatorServices.CalculatorImplPort();

        return calculator.doAdd(x, y);
    }
}
