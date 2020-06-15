export const encode = (dataToEncode) => {
  let encodedData = ""
  let numRepeated = 1
    for (let i = 0; i < dataToEncode.length; i++) {
     if (dataToEncode[i] != dataToEncode[i + 1]) {
      if (numRepeated === 1) {
        encodedData += dataToEncode[i]
        numRepeated = 1
      } else {
        encodedData += numRepeated + dataToEncode[i]
        numRepeated = 1
      }
    } else {
      numRepeated++ 
    } 
  }
  return encodedData;
};

export const decode = (encodedData) => {
  let decodedData = ""
  for (let i = 0; i < encodedData.length; i++) {
    if (encodedData[i] === " ") {
      decodedData += " "
    }
     // check if the character is a number
    if (!isNaN(encodedData[i])) {
      // check if the next character is also a number
      if (!isNaN(encodedData[i + 1])) {
        let numRepetitions = parseInt(encodedData[i] + encodedData[i + 1])
        for (let j = 0; j < numRepetitions; j++) {
          decodedData += encodedData[i + 2]
        }
        i = i + 2
      } else {
        // add the next character to the string n times
        for (let k = 1; k < encodedData[i]; k++) {
          if (encodedData[i + 1] === ' ') {
            decodedData += ' '
          }
          decodedData += encodedData[i + 1]
        }
      }
    } else {
      decodedData += encodedData[i];
    }
  }
  return decodedData
};

console.log(decode('12WB12W3B24WB'))