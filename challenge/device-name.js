// function deviceNamesSystem(devicenames) {
//   const namedArray = [];
//   const nameMap = {};
//   devicenames.forEach(device => {
//     if (!namedArray.includes(device)) {
//       namedArray.push(device)
//     } else {
//       // see if it's already in the nameMap
//       if (nameMap[device]) {
//         nameMap[device] = nameMap[device] + 1
//       } else {
//         nameMap[device] = 1
//       }
//       namedArray.push(`${device}${nameMap[device]}`)
//     }
//   })
//   return namedArray;
// }

// console.log(deviceNamesSystem(["lamp", "lamp", "tv", "lamp"]))

