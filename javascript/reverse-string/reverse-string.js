// export const reverseString = (text) => {
//   let textReversed = ''
//   let i = text.length 
//   while (i--) {
//     textReversed += text[i];
//   }
//   return textReversed
// };

// export const reverseString = (text) => text.split('').reverse().join('')

export const reverseString = (text) => [...text].reverse().join('')