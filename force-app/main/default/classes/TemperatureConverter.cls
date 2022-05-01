public class TemperatureConverter {
	// Pega a temperatura em Fahrenheit e retorna o equivalente em Celsius
    public static Decimal FahrenheitToCelsius(Decimal fh) {
        Decimal cs = (fh - 32 ) * 5/9;
        return cs.setScale(2);
    }

    public static Date SetCustomEndOfMonthDate(Date date1) {
		Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
		return lastDay;
	}
}