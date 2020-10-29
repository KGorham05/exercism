// data types
var myName = "Kevin"; // string
// booleans
var amTired = true; 
// arrays
var students = ["John", "Foos", "Bar"] 
// objects
var thisClass = {
  name: "Full stack web dev",
  teacher: "Michael",
  students: ["John", "Foos", "Bar", "Steve"],
  greetStudent: function(student) {
    console.log(`Hello ${student}`)
  }
}

thisClass.teacher // "Michael"
// thisClass.greetStudent("Steve");
thisClass.students[1] // Foos
// numbers
var myAge = "33"
// functions
// make a function that takes in 2 numbers
// and returns the sum of those numbers

function adder (x = 2, y = 2) {
  return x + y
}

function greet (name) {
  console.log("Hello " + name)
}

greet() // hello world
greet("John") // hello John

// console.log(adder(5, 5)); // return 3

// var adder = function(x, y) {

// }

// const adder = () => {

// }

// var counter;
// counter++;

// const students = [];
// students.push("John") // OK
// students = // does not work -> doesn't want to be reassigned


// counter ++; // error cant reassign a constant
// const vs let


// loops
// condtionals