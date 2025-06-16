import static java.lang.Integer.signum;

class ProductionRemoteControlCar implements RemoteControlCar, Comparable<ProductionRemoteControlCar> {

    private static final int SPEED = 10;
    private int distanceTravelled;
    private int numberOfVictories;

    public void drive() {
        distanceTravelled += SPEED;
    }

    public int getDistanceTravelled() {
        return distanceTravelled;
    }

    public int getNumberOfVictories() {
        return numberOfVictories;
    }

    public void setNumberOfVictories(int numberOfVictories) {
        this.numberOfVictories = numberOfVictories;
    }

    @Override
    public int compareTo(ProductionRemoteControlCar that) {
        return signum(this.getNumberOfVictories() - that.getNumberOfVictories());
    }
}
