// Solution 1 -> Longer but more readable

export const score = (x, y) => {
  const distanceFromCenter = Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2))
  if ( distanceFromCenter <= 1 ) return 10
  else if ( distanceFromCenter <= 5 ) return 5
  else if ( distanceFromCenter <= 10 ) return 1
  else return 0
};

// Solution 2 -> Ternary Chain, shorter but harder to parse 

// export const score = (x, y) => {
//   const distanceFromCenter = Math.sqrt(x * x + y * y)
//   return distanceFromCenter <= 1 ? 10 : distanceFromCenter <= 5 ? 5 : distanceFromCenter <= 10 ? 1 : 0
// };