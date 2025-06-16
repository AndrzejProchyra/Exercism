class MicroBlog {

    public static final int MAX_SIZE = 5;

    public String truncate(String input) {
        int[] codePoints = input.codePoints()
                .limit(MAX_SIZE)
                .toArray();
        return new String(codePoints, 0, codePoints.length);
    }
}
