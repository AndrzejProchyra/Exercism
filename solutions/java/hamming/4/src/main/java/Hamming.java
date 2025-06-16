import java.util.stream.IntStream;

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
        return (int) IntStream.range(0, leftStrand.length())
                .filter(i -> leftStrand.charAt(i) != rightStrand.charAt(i))
                .count();
    }

    int getHammingDistance() {
        return hammingDistance;
    }
}
