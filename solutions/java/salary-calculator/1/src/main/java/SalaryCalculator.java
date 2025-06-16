import static java.lang.Math.min;

public class SalaryCalculator {

    private static final int DAYS_SKIPPED_THRESHOLD = 5;
    private static final double DAYS_SKIPPED_PENALTY_MULTIPLIER = 0.85;
    private static final int PRODUCTS_SOLD_BONUS_THRESHOLD = 20;
    private static final int PRODUCTS_SOLD_BONUS_MULTIPLIER = 13;
    private static final int PRODUCTS_SOLD_BASE_MULTIPLIER = 10;
    private static final double BASE_SALARY = 1000.0;
    private static final double SALARY_CAP = 2000.0;

    public double multiplierPerDaysSkipped(int daysSkipped) {
        return daysSkipped > DAYS_SKIPPED_THRESHOLD ? DAYS_SKIPPED_PENALTY_MULTIPLIER : 1.0;
    }

    public double multiplierPerProductsSold(int productsSold) {
        return productsSold > PRODUCTS_SOLD_BONUS_THRESHOLD ? PRODUCTS_SOLD_BONUS_MULTIPLIER : PRODUCTS_SOLD_BASE_MULTIPLIER;
    }

    public double bonusForProductSold(int productsSold) {
        return productsSold * multiplierPerProductsSold(productsSold);
    }

    public double finalSalary(int daysSkipped, int productsSold) {
        double uncappedSalary = BASE_SALARY * multiplierPerDaysSkipped(daysSkipped) + bonusForProductSold(productsSold);
        return min(uncappedSalary, SALARY_CAP);
    }
}
