import java.util.Map;
import java.util.stream.Collector;

import static java.util.Arrays.stream;
import static java.util.function.Function.identity;
import static java.util.stream.Collectors.*;

public class WordCount {
    private Collector<String, ?, Map<String, Integer>> wordCounts() {
        return groupingBy(identity(), collectingAndThen(counting(), Long::intValue));
    }

    private boolean nonEmpty(String word) {
        return !word.isEmpty();
    }

    private String removeApostrophesAtBeginningOrEnd(String word) {
        return word.replaceAll("(^')|('$)", "");
    }

    private String[] splitByNonWordCharactersExceptApostrophes(String phrase) {
        return phrase.split("[\\W&&[^']]");
    }

    public Map<String, Integer> phrase(String phrase) {
        return stream(splitByNonWordCharactersExceptApostrophes(phrase))
                .map(this::removeApostrophesAtBeginningOrEnd)
                .filter(this::nonEmpty)
                .map(String::toLowerCase)
                .collect(this.wordCounts());
    }
}
