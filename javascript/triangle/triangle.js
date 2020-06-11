function onlyUnique(value, index, self) { 
  return self.indexOf(value) === index;
}

class Triangle {
  constructor(s1, s2, s3) {
    this.sides = [s1, s2, s3]
    this.unique = [...new Set(this.sides)]
  }

  isTriangle() {

  }
  
  isEquilateral() {
    return this.unique.length === 1 ? true : false 
  }

  isIsosceles() {
    
  }

  isScalene() {
    
  }
}
