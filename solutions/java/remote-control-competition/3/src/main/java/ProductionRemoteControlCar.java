import static java.lang.Integer.signum;

class ProductionRemoteControlCar implements RemoteControlCar, Comparable<RemoteControlCar> {

    private static final int SPEED = 10;
    private int numberOfVictories;
    private int distanceTravelled;

    @Override
    public void drive() {
        distanceTravelled += SPEED;
    }

    @Override
    public int getDistanceTravelled() {
        return distanceTravelled;
    }

    @Override
    public int getNumberOfVictories() {
        return numberOfVictories;
    }

    @Override
    public void setNumberOfVictories(int numberOfVictories) {
        this.numberOfVictories = numberOfVictories;
    }

    @Override
    public int compareTo(RemoteControlCar o) {
        return signum(getNumberOfVictories() - o.getNumberOfVictories());
    }
}
