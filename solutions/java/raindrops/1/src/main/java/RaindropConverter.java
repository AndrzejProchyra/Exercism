class RaindropConverter {

    String convert(int number) {
        if (number % 3 != 0 && number % 5 != 0 && number % 7 != 0) {
            return String.valueOf(number);
        } else {
            var stringBuilder = new StringBuilder();

            if (number % 3 == 0) {
                stringBuilder.append("Pling");
            }
            if (number % 5 == 0) {
                stringBuilder.append("Plang");
            }
            if (number % 7 == 0) {
                stringBuilder.append("Plong");
            }

            return stringBuilder.toString();
        }
    }
}
