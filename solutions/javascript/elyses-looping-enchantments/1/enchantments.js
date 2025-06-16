// @ts-check

/**
 * Determine how many cards of a certain type there are in the deck
 *
 * @param {number[]} stack
 * @param {number} card
 *
 * @returns {number} number of cards of a single type there are in the deck
 */
export function cardTypeCheck(stack, card) {
  return stack.reduce(
    (count, currentCard) => (currentCard === card ? count + 1 : count),
    0
  );
}

/**
 * Determine how many cards are odd or even
 *
 * @param {number[]} stack
 * @param {boolean} countingEven true if we are counting even cards, false otherwise
 * @returns {number} number of cards that are either odd or even (depending on `type`)
 */
export function determineOddEvenCards(stack, countingEven) {
  return countingEven ? determineEvenCards(stack) : determineOddCards(stack);
}

function determineEvenCards(stack) {
  return stack.reduce(
    (count, currentCard) => (isEven(currentCard) ? count + 1 : count),
    0
  );
}

function determineOddCards(stack) {
  return stack.reduce(
    (count, currentCard) => (isEven(currentCard) ? count : count + 1),
    0
  );
}

function isEven(currentCard) {
  return currentCard % 2 === 0;
}
