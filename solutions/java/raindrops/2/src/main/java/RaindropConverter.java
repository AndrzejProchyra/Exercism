class RaindropConverter {

    String convert(int number) {
        var sb = new StringBuilder();

        if (number % 3 == 0) {
            sb.append("Pling");
        }
        if (number % 5 == 0) {
            sb.append("Plang");
        }
        if (number % 7 == 0) {
            sb.append("Plong");
        }

        if (sb.length() == 0) {
            return String.valueOf(number);
        } else {
            return sb.toString();
        }
    }
}
