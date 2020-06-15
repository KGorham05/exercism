const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

// export const decodedValue = (colors) => {
//   const firstValue = COLORS.indexOf(colors.shift())
//   const secondValue = COLORS.indexOf(colors.shift())
//   return parseInt(`${firstValue}${secondValue}`)
// };

export const decodedValue = ([firstColor, secondColor]) => {
  return COLORS.indexOf(firstColor) * 10 + COLORS.indexOf(secondColor);
};