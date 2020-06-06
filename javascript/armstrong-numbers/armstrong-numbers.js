export const isArmstrongNumber = (n) => {
  const arrayOfDigits = Array.from(String(n))
  const numDigits = arrayOfDigits.length;
  let sumOfDigitsRaisedToNumDigits = 0;
  arrayOfDigits.map((n) => {sumOfDigitsRaisedToNumDigits += Math.pow(n, numDigits)})
  return n === sumOfDigitsRaisedToNumDigits ? true : false;
};

