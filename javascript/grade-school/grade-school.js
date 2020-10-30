export class GradeSchool {
  constructor() {
    this._roster = {}
  };

  roster = () => JSON.parse(JSON.stringify(this._roster))

  add = (name, grade) => {
    if (this._roster[grade]) {
      this._roster[grade].push(name) 
      this._roster[grade].sort()
    } else {
      this._roster[grade] = [name];
    } 
  }
  
  grade = year => this._roster[year] ? [...this._roster[year]] : [];

};
