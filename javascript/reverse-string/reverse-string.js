// Solution 1 - Recursive Ternary
export const reverseString = text => text ? reverseString(text.substr(1)) + text.charAt(0) : ''

// Solution 2 - while (i--)
// export const reverseString = (text) => {
//   let textReversed = ''
//   let i = text.length 
//   while (i--) {
//     textReversed += text[i];
//   }
//   return textReversed
// };

// Solution 3 - .reverse()
// export const reverseString = (text) => text.split('').reverse().join('')

// Solution 4 - spread operator
// export const reverseString = (text) => [...text].reverse().join('')


