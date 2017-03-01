//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello Playground")

//this is a constant
let straw = "berry";

//this is a simple variable
var blue = "berry";

//you can it's value
blue = "sofa"

//This is a declaration of a variable containg the type of the variable
var declaredType: Double = 50

//if you want to make combine values, you have to cast them
var combined: String = blue + String(declaredType)

//You can even add the string inline by doing this:
print("The number of sofas is \(String(declaredType))");

//this is a list
var list = ["this", "is", "a", "list"];

//This a dict
var dict = [
    "this": 4,
    "dict": 4,
    "is": 2
]

//ControlFlow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0;
for score in individualScores {
    if score < 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

//Optional values
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello \(name)"
}


//The bellow example is a perfect representation of 
//how to use the ?? operator
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "hi \(nickName ?? fullName)"

//Switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raising and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("It's a nice and spicy \(x)")
default:
    print("Everything tastes like soup")
}






// To demonstrate the control flow, here's a simple example of a guess game
//First, here is the number we have to guess
//let diceRoll = Int(arc4random_uniform(20)+1);
//var hasBeenGuessed: Bool = false;
//var numberOfTryes: Float = 0;
//var readNumber: Int;



