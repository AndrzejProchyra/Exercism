class Leap {

    boolean isLeapYear(int year) {
        if (divisibleBy(year, 100))
            return divisibleBy(year, 400);
        return divisibleBy(year, 4);
    }

    private boolean divisibleBy(int n, int divisor) {
        return n % divisor == 0;
    }
}
