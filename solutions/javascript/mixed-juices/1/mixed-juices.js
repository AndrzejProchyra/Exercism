// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

const juiceTimes = {
  "Pure Strawberry Joy": 0.5,
  Energizer: 1.5,
  "Green Garden": 1.5,
  "Tropical Island": 3,
  "All or Nothing": 5,
};

const wedgeCounts = {
  small: 6,
  medium: 8,
  large: 10,
};

const DEFAULT_MIX_TIME = 2.5;

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
  return juiceTimes[name] ?? DEFAULT_MIX_TIME;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  const remainingLimes = [...limes];
  while (wedgesNeeded > 0) {
    wedgesNeeded -= wedgeCounts[remainingLimes.shift()];
  }
  return limes.length - remainingLimes.length;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  const ordersLeft = [...orders];
  while (timeLeft > 0) {
    timeLeft -= timeToMixJuice(ordersLeft.shift());
  }
  return ordersLeft;
}
