class ResistorColor {

    private final String[] colors = {
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
    };

    public int colorCode(String input) {
        for (int code = 0; code < colors.length; code++) {
            if (colors[code].equals(input)) {
                return code;
            }
        }
        return -1;
    }

    public String[] colors() {
        return colors;
    }
}
