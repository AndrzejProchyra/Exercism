import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class Robot {
    public static final char UPPERCASE_A = 'A';
    private static final Set<String> robotNames = new HashSet<>();
    private final Random random = new Random();
    private String name;

    public Robot() {
        reset();
    }

    public String getName() {
        return name;
    }

    public void reset() {
        while (robotNames.contains(name)) {
            int digits = random.nextInt(1000);
            char charOne = randomUpperCaseChar();
            char charTwo = randomUpperCaseChar();
            name = String.format("%c%c%03d", charOne, charTwo, digits);
        }
        robotNames.add(name);
    }

    private char randomUpperCaseChar() {
        return (char) (UPPERCASE_A + random.nextInt(26));
    }
}
