export class Triangle {
  constructor(s1, s2, s3) {
    this.sides = [s1, s2, s3]
    this.unique = [...new Set(this.sides)].length
  }

  isTriangle() {
    return ( this.sides[0] === 0 || this.sides[1] === 0 || this.sides[2] === 0 ) ? false : true
  }
  
  isEquilateral() {
    return this.isTriangle() ? this.unique === 1 ? true : false : false
  }

  isIsosceles() {
    return this.isTriangle() ? this.unique === 2 ? true : false : false
  }

  isScalene() {
    return this.isTriangle() ? this.unique === 3 ? true : false : false
  }
}
