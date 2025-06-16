import static java.lang.String.format;

class Proverb {

    private final String[] words;
    private final StringBuilder proverbBuilder = new StringBuilder();

    Proverb(String[] words) {
        this.words = words;
    }

    String recite() {
        if (words.length == 0) return "";
        appendLines();
        appendLastLine();
        return proverbBuilder.toString();
    }

    private void appendLines() {
        for (int i = 1; i < words.length; i++) {
            proverbBuilder.append(format("For want of a %s the %s was lost.%n", words[i - 1], words[i]));
        }
    }

    private void appendLastLine() {
        proverbBuilder.append(format("And all for the want of a %s.", words[0]));
    }
}
