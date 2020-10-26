export class Matrix {
  constructor(matrix) {
    this.allRows = matrix.split("\n").map(row => row.split(" ").map(Number))
    this.allCols = this.allRows[0].map((value, column) => this.allRows.map(row => row[column]))
  }

  get rows() {
    return this.allRows
  }

  get columns() {
    return this.allCols
  }
}

