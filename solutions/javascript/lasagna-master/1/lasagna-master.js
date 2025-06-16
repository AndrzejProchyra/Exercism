/// <reference path="./global.d.ts" />
// @ts-check

export function cookingStatus(remainingTime) {
  if (remainingTime === undefined) return "You forgot to set the timer.";
  if (remainingTime === 0) return "Lasagna is done.";
  return "Not done, please wait.";
}

export function preparationTime(layers, averagePerLayer = 2) {
  return layers.length * averagePerLayer;
}

export function quantities(layers) {
  const result = { noodles: 0, sauce: 0 };
  const amountPerLayer = { noodles: 50, sauce: 0.2 };

  layers.forEach((layer) => {
    if (amountPerLayer[layer]) result[layer] += amountPerLayer[layer];
  });

  return result;
}

export function addSecretIngredient(friendsList, myList) {
  myList.push(friendsList[friendsList.length - 1]);
}

export function scaleRecipe(twoPortionRecipe, numberOfPortions) {
  const scaleFactor = numberOfPortions / 2;
  const scaledRecipe = {};

  for (let property in twoPortionRecipe) {
    scaledRecipe[property] = twoPortionRecipe[property] * scaleFactor;
  }

  return scaledRecipe;
}
