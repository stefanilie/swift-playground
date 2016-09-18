//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var length = 5
var width = 10

var area = length * width

func calculateArea(length: Int, width: Int) -> Int{
    let area = length * width
    return area
}

let newArea = calculateArea(length: 5, width: 10)

//Booleans and operators
var amITheBestTeacher = true
amITheBestTeacher = false

if true == false || true == true {
    print("WTF")
}

//Logical operators
let allowedEntry = false
if !allowedEntry {
    
}
