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


//-----------------------------Exercises Swift 3 functions


func add(par1: Double, par2: Double) -> Double{
    return par1+par2;
}

func substract(par1: Int, par2: Int) -> Int{
    return par1-par2;
}

//Logical operators
let allowedEntry = false
//let inseamna ca e constanta valoarea

if !allowedEntry {
        print("access denied")
}

let enteredDoorCode = true;
let passedRetinaScan = false;
let suntFlorinPiersic = false;


if enteredDoorCode && passedRetinaScan || !suntFlorinPiersic {
     print("welcome")
}


//--------------------------Arrays

var employeeSalaries : [Double] = [4500.0, 540000.0, 1000000.0, 200000.0]

employeeSalaries.append(34000.0)
print(employeeSalaries.count);
employeeSalaries.remove(at: 1);
print(employeeSalaries.count)

var students = [String]()
print(students.count)
students.append("john")
students.append("jose")
students.append("Jingle")

students.remove(at: 2);


//----------------Loops

var index = 0;
repeat{
    employeeSalaries[index] = employeeSalaries[index] + (employeeSalaries[index]*0.10);
    index += 1;
}while(index<employeeSalaries.count)

for i in 0..<employeeSalaries.count {
    employeeSalaries[i] = employeeSalaries[i] + (employeeSalaries[i]*0.10);
}

for ex in employeeSalaries{
    print("Salary: \(ex)");
}

for z in 1..<5{
    print("Index of Z: \(z)");
}











