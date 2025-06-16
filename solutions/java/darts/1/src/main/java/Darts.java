import static java.lang.Math.pow;
import static java.lang.Math.sqrt;

class Darts {

    private final double x;
    private final double y;

    Darts(double x, double y) {
        this.x = x;
        this.y = y;
    }

    int score() {
        double distanceFromCentre = sqrt(pow(x, 2) + pow(y, 2));
        if (distanceFromCentre <= 1) {
            return 10;
        } else if (distanceFromCentre <= 5) {
            return 5;
        } else if (distanceFromCentre <= 10) {
            return 1;
        } else {
            return 0;
        }
    }

}
