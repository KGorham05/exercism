// v2 for loop
export const rows = (height) => {
  const pyramid = [];
  for (let i = 0; i <= height; i++) {
    if (pyramid.length === height) {
      return pyramid;
    }
    if (pyramid.length === 0) {
      pyramid.push([1]);
      continue;
    }
    const newRow = [1];
    const lastRow = pyramid[i - 1];
    lastRow.forEach((value, j) => {
      if (lastRow[j + 1]) newRow.push(lastRow[j] + lastRow[j + 1]);
    });
    newRow.push(1);
    pyramid.push(newRow);
  }
};

// v1 Recursive
// export const rows = (height, pyramid = [], i = 0) => {
//   if (pyramid.length === height) {
//     return pyramid;
//   }
//   if (pyramid.length === 0) {
//     return rows(height, [[1]], ++i);
//   }
//   const newRow = [1];
//   const lastRow = pyramid[i - 1];
//   lastRow.forEach((value, j) => {
//     if (lastRow[j + 1]) newRow.push(lastRow[j] + lastRow[j + 1]);
//   });
//   newRow.push(1);
//   pyramid.push(newRow);
//   return rows(height, pyramid, ++i);
// };
