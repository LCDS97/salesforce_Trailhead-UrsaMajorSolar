/**
 * @Descrição                : 
 * @Autor                    : 
 * @Empresa:                 : Everymind LTDA.
 * @Ultima modificação em:   : [11 06 2022]
 * @Ultima modificação por:  : Lucas Conceição dos Santos / lucas.santos@everymind.com.br
**/
public class ParkLocator {
    
    public static String[] country(String country){

        ParkService.ParksImplPort park = new ParkService.ParksImplPort();

        return park.byCountry(country);
    } 
}
