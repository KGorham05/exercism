// Solution 1 - while (i--)
// export const reverseString = (text) => {
//   let textReversed = ''
//   let i = text.length 
//   while (i--) {
//     textReversed += text[i];
//   }
//   return textReversed
// };

// Solution 2 - .reverse()
// export const reverseString = (text) => text.split('').reverse().join('')

// Solution 2 - spread operator + reverse
// export const reverseString = (text) => [...text].reverse().join('')

// Solution 3 - Recursive Ternary
export const reverseString = (text) => text === '' ? '' : reverseString(text.substr(1)) + text.charAt(0)
