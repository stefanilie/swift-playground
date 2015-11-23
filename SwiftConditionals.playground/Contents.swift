//: Playground - noun: a place where people can play

import UIKit

var isMyHouseOnFire: Bool = false

var anotherBool = true

if isMyHouseOnFire {
    print("Someone get some water!")
} else {
    print("Someone get some fire for my house!")
}

var result = true == true
result = true == false
result = false == false

var accountTotal = 300.33
var newCallOfDutyGame = 59.99

if accountTotal >= newCallOfDutyGame{
    print("I just purchased the game")
} else {
    print("I don't have enough money")
}

var name = "Jack"

if name == "Jack" {
    print("Your name is not Jack")
} else {
    print("you are not Jack")
}

//===============FUNCTIONS====================

func foo(){
    print("ciorba")
}
foo()


var bankAccount = 500.50
var itemsAmount = 212.23

func makePurchase() {
    if bankAccount >= itemsAmount {
         bankAccount -= itemsAmount
    }
}

makePurchase()


func attemptPruchase (amount: Double) { //In acest caz, amount este constanta
    print(amount)
}

func attemptPuschase2 (var amount2: Double){
    amount2 = 5.2
    print(amount2)
}

func canPurchse(amount: Double) -> Bool{
    if(amount>0){
        return true;
    }
    else {
        return false;
    }
}

var results = canPurchse(-4.4);

var string = "ciorba"

func getUpper (string:String) ->String{
    return string.uppercaseString
}

getUpper(string)

attemptPruchase(itemsAmount)
attemptPuschase2(2.55)


//Exercises

func add (num1: Double, num2: Double) ->Double{
    return num1+num2
}

func subtract (num1: Int, num2: Int) -> Int{
    return num1+num2
}

func multiply (num1: Float, num2: Float) -> Float{
    return num1*num2
}

func divide (num1: Double, num2: Double) -> Double{
    return num1/num2
}




