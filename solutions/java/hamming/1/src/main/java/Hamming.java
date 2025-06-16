class Hamming {

    private String leftStrand;
    private String rightStrand;

    Hamming(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            if (leftStrand.isEmpty()) {
                throw new IllegalArgumentException("left strand must not be empty.");
            }

            if (rightStrand.isEmpty()) {
                throw new IllegalArgumentException("right strand must not be empty.");
            }

            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }

        this.leftStrand = leftStrand;
        this.rightStrand = rightStrand;
    }

    int getHammingDistance() {
        var leftStrandBytes = leftStrand.getBytes();
        var rightStrandBytes = rightStrand.getBytes();

        var distance = 0;

        for (var i = 0; i < leftStrandBytes.length; i++) {
            if (leftStrandBytes[i] != rightStrandBytes[i])
                distance++;
        }

        return distance;
    }
}
