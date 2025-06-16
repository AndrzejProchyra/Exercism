import java.util.Map;

import static java.util.Map.entry;

public class Blackjack {

    private final Map<String, Integer> cards = Map.ofEntries(
            entry("two", 2),
            entry("three", 3),
            entry("four", 4),
            entry("five", 5),
            entry("six", 6),
            entry("seven", 7),
            entry("eight", 8),
            entry("nine", 9),
            entry("ten", 10),
            entry("jack", 10),
            entry("queen", 10),
            entry("king", 10),
            entry("ace", 11)
    );

    public int parseCard(String card) {
        return cards.get(card);
    }

    public boolean isBlackjack(String card1, String card2) {
        return cards.get(card1) + cards.get(card2) == 21;
    }

    public String largeHand(boolean isBlackjack, int dealerScore) {
        if (isBlackjack)
            return dealerScore >= 10 ? "S" : "W";
        return "P";
    }

    public String smallHand(int handScore, int dealerScore) {
        if (handScore <= 11)
            return "H";
        if (handScore <= 16)
            return dealerScore < 7 ? "S" : "H";
        return "S";
    }

    // FirstTurn returns the semi-optimal decision for the first turn, given the cards of the player and the dealer.
    // This function is already implemented and does not need to be edited. It pulls the other functions together in a
    // complete decision tree for the first turn.
    public String firstTurn(String card1, String card2, String dealerCard) {
        int handScore = parseCard(card1) + parseCard(card2);
        int dealerScore = parseCard(dealerCard);

        if (20 < handScore)
            return largeHand(isBlackjack(card1, card2), dealerScore);

        else
            return smallHand(handScore, dealerScore);
    }
}
