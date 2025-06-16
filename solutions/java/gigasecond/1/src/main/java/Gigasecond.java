import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;

class Gigasecond {

    private static final Duration GIGASECOND_DURATION = Duration.ofSeconds(1_000_000_000);
    private LocalDateTime dateTimeAfterGigasecond;

    Gigasecond(LocalDate moment) {
        this(moment.atStartOfDay());
    }

    Gigasecond(LocalDateTime moment) {
        dateTimeAfterGigasecond = moment.plus(GIGASECOND_DURATION);
    }

    LocalDateTime getDateTime() {
        return dateTimeAfterGigasecond;
    }

}
