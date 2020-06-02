const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

export const decodedValue = (colors) => {
  const firstValue = COLORS.indexOf(colors.shift())
  const secondValue = COLORS.indexOf(colors.shift())
  return parseInt(`${firstValue}${secondValue}`)
};

