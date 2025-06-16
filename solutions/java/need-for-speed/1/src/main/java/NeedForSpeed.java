class NeedForSpeed {
    private final int speed;
    private final int batteryDrain;
    private int distanceDriven;
    private int battery = 100;

    public NeedForSpeed(int speed, int batteryDrain) {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public static NeedForSpeed nitro() {
        return new NeedForSpeed(50, 4);
    }

    public boolean batteryDrained() {
        return battery == 0;
    }

    public int distanceDriven() {
        return distanceDriven;
    }

    public void drive() {
        if (battery >= batteryDrain) {
            distanceDriven += speed;
            battery -= batteryDrain;
        }
    }
}

class RaceTrack {
    private final int distance;

    public RaceTrack(int distance) {
        this.distance = distance;
    }

    public boolean carCanFinish(NeedForSpeed car) {
        while (!car.batteryDrained())
            car.drive();
        return car.distanceDriven() >= distance;
    }
}
