import java.util.List;

class ResistorColor {

    private final List<String> colors = List.of(
            "black",
            "brown",
            "red",
            "orange",
            "yellow",
            "green",
            "blue",
            "violet",
            "grey",
            "white"
    );

    public int colorCode(String color) {
        return colors.indexOf(color);
    }

    public String[] colors() {
        return colors.toArray(new String[10]);
    }
}
