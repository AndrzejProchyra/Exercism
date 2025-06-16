public class Lasagna {

    private static final int COOKING_TIME_MINUTES = 40;
    private static final int LAYER_PREPARATION_TIME_MINUTES = 2;

    public int expectedMinutesInOven() {
        return COOKING_TIME_MINUTES;
    }

    public int remainingMinutesInOven(int minutesInOven) {
        return COOKING_TIME_MINUTES - minutesInOven;
    }

    public int preparationTimeInMinutes(int layers) {
        return LAYER_PREPARATION_TIME_MINUTES * layers;
    }

    public int totalTimeInMinutes(int layers, int minutesInOven) {
        return preparationTimeInMinutes(layers) + minutesInOven;
    }
}
