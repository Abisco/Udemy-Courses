// Playground - noun: a place where people can play

import UIKit

//Arrays! Woohoo
var ages = [34, 33, 3, 0]

var myAge = ages[1]
var myWifesAge = ages[0]
var totalAge = ages[1] + ages[0]

ages.append(5)
println(ages)

ages.removeAtIndex(4)
println(ages)

var numOfPeopleInFamily = ages.count

//Function to cast it array of Integer (with nothing in it) The bracket denotes a function
var someIntegers = [Int]()
var someStrings = [String]()


//Dictionaries!!!
var myFamily = ["Dad": "Rob", "Mum": "Kirsten", "First Son": "Tom", "Second Son": "Ralphie"]
//Assign to a new dictionary
var mumsName = myFamily["Mum"]
var myRole = "Dad"
var myName = myFamily[myRole]

myFamily["Daughter"] = "Mary"

println(myFamily)
//2 Ways to remove
myFamily["Daughter"] = nil

//Again a function, empty dictionary with strings and strings
var myDictionary = Dictionary<String, Float>()

myDictionary["pi"] = 3.14
println(myDictionary)


//Okay Challenge
//Dictionary named fav colours. Fav colour for each person in family
//Output text showing: "There are xxx people in my family, and my favourite colour is xxx"

var familyColours = ["Papa": "Yellow", "Abu":"Green", "Mummy":"Red"]
var numOfFamily = familyColours.count
var myFav = familyColours["Abu"]!

var String = "There are \(numOfFamily) people in my family, and my favouirte colour is \(myFav)"

println(String)

