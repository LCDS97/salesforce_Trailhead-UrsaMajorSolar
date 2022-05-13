public class TemperatureConverter {
	// Pega a temperatura em Fahrenheit e retorna o equivalente em Celsius
    public static Decimal FahrenheitToCelsius(Decimal fh) {
        Decimal cs = (fh - 32 ) * 5/9;
        return cs.setScale(2);
    }

}