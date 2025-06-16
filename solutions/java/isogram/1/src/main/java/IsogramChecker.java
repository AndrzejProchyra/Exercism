class IsogramChecker {

    boolean isIsogram(String phrase) {
        String phraseWithNoRepeatableCharacters = removeHyphensAndSpaces(phrase);

        return phraseWithNoRepeatableCharacters
                .toLowerCase()
                .chars()
                .distinct()
                .count() == phraseWithNoRepeatableCharacters.length();
    }

    private String removeHyphensAndSpaces(String phrase) {
        return phrase.replaceAll("[- ]", "");
    }
}
