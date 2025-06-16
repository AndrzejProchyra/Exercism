import static java.lang.String.format;

public class ElonsToyCar {

    private static final int METERS_COVERED_PER_DRIVE = 20;
    private static final int BATTERY_USED_PER_DRIVE = 1;
    private int drivenMeters;
    private int batteryPercentage = 100;

    public static ElonsToyCar buy() {
        return new ElonsToyCar();
    }

    public String distanceDisplay() {
        return format("Driven %d meters", drivenMeters);
    }

    public String batteryDisplay() {
        if (batteryEmpty())
            return "Battery empty";
        return format("Battery at %d%%", batteryPercentage);
    }

    public void drive() {
        if (batteryNotEmpty()) {
            drivenMeters += METERS_COVERED_PER_DRIVE;
            batteryPercentage -= BATTERY_USED_PER_DRIVE;
        }
    }

    private boolean batteryEmpty() {
        return batteryPercentage == 0;
    }

    private boolean batteryNotEmpty() {
        return batteryPercentage > 0;
    }
}
