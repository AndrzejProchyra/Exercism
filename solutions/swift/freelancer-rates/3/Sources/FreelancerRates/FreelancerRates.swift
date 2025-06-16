let hoursWorkedPerDay = 8.0
let workdaysPerMonth = 22.0

func dailyRateFrom(hourlyRate: Int) -> Double {
    Double(hourlyRate) * hoursWorkedPerDay
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
    let flatMonthlyRate = dailyRate * workdaysPerMonth
    let discountedMonthlyRate = (100 - discount) / 100 * flatMonthlyRate
    return discountedMonthlyRate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double)
    -> Double
{
    let discountedHourlyRate = Double(hourlyRate) * (100.0 - discount) / 100.0
    let hoursAtDiscountedRate = budget / discountedHourlyRate
    return (hoursAtDiscountedRate / hoursWorkedPerDay).rounded(.down)
}
