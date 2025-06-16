import static java.util.Arrays.stream;

class BirdWatcher {

    private static final int BUSY_DAY_THRESHOLD = 5;
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return birdsPerDay.clone();
    }

    public int getToday() {
        if (birdsPerDay.length == 0)
            return 0;
        return birdsPerDay[birdsPerDay.length - 1];
    }

    public void incrementTodaysCount() {
        birdsPerDay[birdsPerDay.length - 1]++;
    }

    public boolean hasDayWithoutBirds() {
        return stream(birdsPerDay)
                .anyMatch(count -> count == 0);
    }

    public int getCountForFirstDays(int numberOfDays) {
        return stream(birdsPerDay)
                .limit(numberOfDays)
                .sum();
    }

    public int getBusyDays() {
        return (int) stream(birdsPerDay)
                .filter(count -> count >= BUSY_DAY_THRESHOLD)
                .count();
    }
}
