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


//warmup
func isEven(num1: Int) -> Bool {
    if num1%2==0 {
        return true
    } else {
        return false;
    }
}

print(isEven(3));

//arryas

var countries = [String]();
var topColors = [String](count: 20, repeatedValue: "cur");

var favCars = [String]();
favCars.append("Dacia");
favCars.insert("Renault", atIndex: 1);

print(favCars);



//loops

var ages = [23, 25, 41, 51, 62];

for var x = 0; x<ages.count; x++ {
    var age = ages[x];
    
    if age>=50 {
        print("You are 50 years old")
    }
}

//arrays exercise(36):
var oddNumbers = [Int]();
for var x=1; x<=100; x++ {
    if !isEven(x){
        oddNumbers.append(x);
    }
}

print(oddNumbers);

var sums=[Int]();
for index in 0...oddNumbers.count-1 {
    oddNumbers[index]+=5;
}

var i=0;
while (i<oddNumbers.count) {
    print("The sum is:+ \(oddNumbers[i])");
    i++;
}

//After callculator app
for var i = 1; i<=200; i++ {
    if(i%3==0){
        print("Boo");
    } else if (i%5==0){
        print("Ya");
    } else if (i%3==0 && i%5==0){
        print("BooYa");
    }
}

//Dictionaries

var dex: [String: String] = ["krill": "any of the small crustaceans", "fire": "a burning mass of material"];
var altDex: [Int: String] = [44: "I hate this number"];

if let krill = dex["krill"] {
    print(krill);
}

//dex = [:] ca sa golim dict

if dex.isEmpty {
    print("ciorba");
}


for (word, definition) in dex {
    print("\(word): \(definition)")
}



//OOP
class Vehicle {
    private var _engine = "4.0 L";
    var color = "Silver";
    var odometer = 0;
    
    init(engine: String, color: String){
        self.engine = engine;
        self.color = color;
    }
    
    var engine: String{
        get {
            return _engine;
        }
        set{
            self._engine = engine;
        }
    }
    
    init(){
        print("empty init");
    }
    func enterMiles(miles: Int) {
        odometer += miles;
    }
}

var srx = Vehicle(engine: "2.3L", color: "Royal Blue");





