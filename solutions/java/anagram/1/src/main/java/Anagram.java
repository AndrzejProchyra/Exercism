import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class Anagram {

    private final String input;
    private final byte[] sortedInputBytes;

    public Anagram(String input) {
        this.input = input;
        sortedInputBytes = getSortedBytes(this.input);
    }

    public List<String> match(List<String> candidates) {
        return candidates.stream()
                .filter(this::isAnagram)
                .collect(Collectors.toList());
    }

    private boolean isAnagram(String candidate) {
        if (candidate.equalsIgnoreCase(input))
            return false;

        byte[] candidateBytes = getSortedBytes(candidate);
        return Arrays.equals(sortedInputBytes, candidateBytes);
    }

    private byte[] getSortedBytes(String source) {
        byte[] bytes = source.toUpperCase().getBytes();
        Arrays.sort(bytes);
        return bytes;
    }
}