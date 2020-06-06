// 9 is an Armstrong number, because 9 = 9^1 = 9
// 10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 1
// 153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
// 154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190

// An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.

export const isArmstrongNumber = (n) => {
  const arrayOfDigits = Array.from(String(n))
  const numDigits = arrayOfDigits.length;
  let sumOfDigitsRaisedToNumDigits = 0;
  arrayOfDigits.map((n) => {sumOfDigitsRaisedToNumDigits += Math.pow(n, numDigits)})
  return n === sumOfDigitsRaisedToNumDigits ? true : false;
};

