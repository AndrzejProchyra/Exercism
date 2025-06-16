// @ts-check

export class ArgumentError extends Error {}

export class OverheatingError extends Error {
  constructor(temperature) {
    super(`The temperature is ${temperature} ! Overheating !`);
    this.temperature = temperature;
  }
}

const MAXIMUM_HUMIDITY = 70;

/**
 * Check if the humidity level is not too high.
 *
 * @param {number} humidityPercentage
 * @throws {Error}
 */
export function checkHumidityLevel(humidityPercentage) {
  if (humidityPercentage > MAXIMUM_HUMIDITY)
    throw new Error("The humidity is too high.");
}

const MAXIMUM_TEMPERATURE = 500;

/**
 * Check if the temperature is not too high.
 *
 * @param {number|null} temperature
 * @throws {ArgumentError|OverheatingError}
 */
export function reportOverheating(temperature) {
  if (temperature === null) throw new ArgumentError("The sensor is broken.");
  if (temperature > MAXIMUM_TEMPERATURE)
    throw new OverheatingError(temperature);
}

/**
 *  Triggers the needed action depending on the result of the machine check.
 *
 * @param {{
 * check: function,
 * alertDeadSensor: function,
 * alertOverheating: function,
 * shutdown: function
 * }} actions
 * @throws {ArgumentError|OverheatingError|Error}
 */
export function monitorTheMachine(actions) {
  try {
    actions.check();
  } catch (e) {
    handleMachineCheckError(e, actions);
  }
}

const CRITICAL_TEMPERATURE = 600;

function handleMachineCheckError(e, actions) {
  if (e instanceof ArgumentError) {
    actions.alertDeadSensor();
  } else if (e instanceof OverheatingError) {
    handleOverheatingError(e, actions);
  } else {
    throw e;
  }
}

function handleOverheatingError(e, actions) {
  if (e.temperature > CRITICAL_TEMPERATURE) {
    actions.shutdown();
  } else {
    actions.alertOverheating();
  }
}
