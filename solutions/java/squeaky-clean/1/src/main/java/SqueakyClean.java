import static java.lang.Character.*;

class SqueakyClean {
    static String clean(String identifier) {
        if (identifier.isEmpty())
            return "";

        var first = firstCharOf(identifier);
        var rest = restOf(identifier);

        if (isSpace(first))
            return "_" + clean(rest);
        if (isISOControl(first))
            return "CTRL" + clean(rest);
        if (isHyphen(first))
            return capitalize(clean(rest));
        if (isNotAlphabetic(first) || isLowercaseGreekLetter(first))
            return clean(rest);

        return first + clean(rest);
    }

    private static boolean isLowercaseGreekLetter(char c) {
        return c >= 'α' && c <= 'ω';
    }

    private static boolean isNotAlphabetic(char c) {
        return !isAlphabetic(c);
    }

    private static boolean isHyphen(char c) {
        return c == '-';
    }

    private static boolean isSpace(char c) {
        return c == ' ';
    }

    private static String capitalize(String s) {
        if (s.isEmpty())
            return "";
        return toUpperCase(firstCharOf(s)) + restOf(s);
    }

    private static String restOf(String s) {
        return s.substring(1);
    }

    private static char firstCharOf(String s) {
        return s.charAt(0);
    }
}
