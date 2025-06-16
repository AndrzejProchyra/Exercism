import java.util.ArrayList;
import java.util.List;

class DiamondPrinter {

    private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private final List<String> diamond = new ArrayList<>();

    List<String> printToList(char c) {
        makeTopRowsUpTo(c);
        mirrorRows();
        return diamond;
    }

    private void makeTopRowsUpTo(char c) {
        int charIndex = CHARACTERS.indexOf(c);
        for (int i = 0; i <= charIndex; i++) {
            String row = makeRowFor(CHARACTERS.charAt(i));
            String paddedRow = pad(row, charIndex - i);
            diamond.add(paddedRow);
        }
    }

    private String pad(String s, int spaces) {
        return " ".repeat(spaces) + s + " ".repeat(spaces);
    }

    private void mirrorRows() {
        for (int i = diamond.size() - 2; i >= 0; i--)
            diamond.add(diamond.get(i));
    }

    private String makeRowFor(char c) {
        if (c == 'A') return "A";
        int spacesBetween = CHARACTERS.indexOf(c) * 2 - 1;
        return c + " ".repeat(spacesBetween) + c;
    }
}
