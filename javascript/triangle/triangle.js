export class Triangle {
  constructor(...args) {
    this.sides = args
    this.unique = [...new Set(this.sides)].length
    this.maxValue = Math.max(...args)
    this.sumOfSmallerSides = args.reduce((acc, val) => acc + val) - this.maxValue;
  }
  isTriangle    = () => (this.sides.indexOf(0 != -1) ? true : false) && this.sumOfSmallerSides > this.maxValue
  isEquilateral = () => this.isTriangle() && (this.unique === 1 ? true : false) 
  isIsosceles   = () => this.isTriangle() && (this.unique === 1 || this.unique === 2 ? true : false)
  isScalene     = () => this.isTriangle() && (this.unique === 3 ? true : false) 
}
