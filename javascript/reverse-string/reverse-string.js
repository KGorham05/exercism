// Solution 1 - Recursive Ternary
// export const reverseString = s => s ? reverseString(s.substr(1)) + s[0] : ''

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
 export const reverseString = (text) => text.split('').reverse().join('')


// Solution 4 - spread operator
// export const reverseString = (text) => [...text].reverse().join('')

