class SpaceAge {

    private final double seconds;

    SpaceAge(double seconds) {
        this.seconds = seconds;
    }

    double onEarth() {
        return Planet.EARTH.yearsFrom(seconds);
    }

    double onMercury() {
        return Planet.MERCURY.yearsFrom(seconds);
    }

    double onVenus() {
        return Planet.VENUS.yearsFrom(seconds);
    }

    double onMars() {
        return Planet.MARS.yearsFrom(seconds);
    }

    double onJupiter() {
        return Planet.JUPITER.yearsFrom(seconds);
    }

    double onSaturn() {
        return Planet.SATURN.yearsFrom(seconds);
    }

    double onUranus() {
        return Planet.URANUS.yearsFrom(seconds);
    }

    double onNeptune() {
        return Planet.NEPTUNE.yearsFrom(seconds);
    }

    private enum Planet {
        EARTH(1),
        MERCURY(0.2408467),
        VENUS(0.61519726),
        MARS(1.8808158),
        JUPITER(11.862615),
        SATURN(29.447498),
        URANUS(84.016846),
        NEPTUNE(164.79132);

        private static final double EARTH_SECONDS_PER_YEAR = 365.25 * 24 * 60 * 60;
        private final double relativeOrbitalPeriod;

        Planet(double relativeOrbitalPeriod) {
            this.relativeOrbitalPeriod = relativeOrbitalPeriod;
        }

        private double yearsFrom(double seconds) {
            return seconds / (EARTH_SECONDS_PER_YEAR * relativeOrbitalPeriod);
        }
    }
}
