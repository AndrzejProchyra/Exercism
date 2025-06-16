class Hamming {

    private int hammingDistance;

    Hamming(String leftStrand, String rightStrand) {
        checkLengths(leftStrand, rightStrand);
        this.hammingDistance = calculateHammingDistance(leftStrand, rightStrand);
    }

    private void checkLengths(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            if (leftStrand.isEmpty()) {
                throw new IllegalArgumentException("left strand must not be empty.");
            }

            if (rightStrand.isEmpty()) {
                throw new IllegalArgumentException("right strand must not be empty.");
            }

            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }
    }

    private int calculateHammingDistance(String leftStrand, String rightStrand) {
        var distance = 0;

        for (var i = 0; i < leftStrand.length(); i++) {
            if (leftStrand.charAt(i) != rightStrand.charAt(i))
                distance++;
        }

        return distance;
    }

    int getHammingDistance() {
        return hammingDistance;
    }
}
