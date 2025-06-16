import static java.util.Arrays.stream;

public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        return Speed.fromInt(speed).productionRate();
    }

    public int workingItemsPerMinute(int speed) {
        return (int) Math.floor(Speed.fromInt(speed).productionRate() / 60.0);
    }

    private enum Speed {
        ZERO(0, 1),
        ONE(1, 1),
        TWO(2, 1),
        THREE(3, 1),
        FOUR(4, 1),
        FIVE(5, .9),
        SIX(6, .9),
        SEVEN(7, .9),
        EIGHT(8, .9),
        NINE(9, .8),
        TEN(10, .77);

        private static final double BASE_HOURLY_PRODUCTION_RATE = 221.0;
        private final int multiplier;
        private final double successRate;

        Speed(int multiplier, double successRate) {
            this.multiplier = multiplier;
            this.successRate = successRate;
        }

        private static Speed fromInt(int n) {
            return stream(values())
                    .filter(s -> s.multiplier == n)
                    .findFirst()
                    .orElseThrow(() -> new IllegalArgumentException("Speed must be between 0 and 10"));
        }

        private double productionRate() {
            return BASE_HOURLY_PRODUCTION_RATE * multiplier * successRate;
        }
    }
}
