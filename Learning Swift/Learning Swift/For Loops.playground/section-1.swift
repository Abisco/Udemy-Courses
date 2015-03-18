// Playground - noun: a place where people can play

import UIKit



//Incrementing!
var number = 3
var newNumber = ++number

//For loops

for var i = 0; i < 3; i++ {
    println(i)
}

for var i = 10; i > 3; --i {
    println(i)
}

var numbers = [3, 6, 1, 8, 4]

for (index, value) in enumerate(numbers) {
    println("Index: \(index), Value: \(value)")
}



var newNumbers = ["a":1, "b":2, "c":3, "d":4, "e":5]

for (index, value) in newNumbers {
     newNumbers[index] = value + 1
}


//While loops
var i = 3
while (i < 7) {
    println(i)
    i++
}

var array = [7, 2, 9, 4]
var j = 0
var max = array.count
while (j < max) {
    
}