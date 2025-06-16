import static java.lang.Integer.signum;

public class ExperimentalRemoteControlCar implements RemoteControlCar, Comparable<RemoteControlCar> {

    private static final int SPEED = 20;
    private int numberOfVictories;
    private int distanceTravelled;

    public void drive() {
        distanceTravelled += SPEED;
    }

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
