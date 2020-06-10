export const reverseString = (text) => {
  let textReversed = ''
  let i = text.length 
  while (i--) {
    textReversed += text[i];
  }
  return textReversed
};
