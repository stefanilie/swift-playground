//: Playground - noun: a place where people can play


// tl;dr:
// ? - used for variables that we don't know if they will have a value
// ! - used for variables that we know FOR SURE that at one point in time we add value
import UIKit

//Question mark is for when we don't know 
// if we will have a value in there
var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100;

if let winnings = lotteryWinnings{
    print(winnings);
}

class Car {
    var model: String?
}

var vehicle: Car?

vehicle = Car();
//This is an optional and I don't know what is going to happen with it
vehicle?.model = "Bronco";

//If vehicle has a value, it adds it to v.
if let v = vehicle {
    if let m = v.model {
        print(m);
    }
}

//This is the same as the above, but in one line
if let v = vehicle, let m = v.model{
    print(m);
}

var cars: [Car]?

cars = [Car]();

if let carArr = cars{
    if carArr.count>0{
        //do stuff
    }
}

if let carArr = cars , carArr.count > 0{
    //do stuff
    //same as abouve
} else {
    cars?.append(Car());
    print(cars?.count);
}

class Person {
    //This means that I am going to give this one a value sometime.
    private var _age: Int!;
    
    var age: Int {
        if _age == nil{
            _age=15;
        }
        
        return _age;
    }
    
    func setAge(newAge: Int){
        self._age = newAge;
    }
}

var jack = Person();
print(jack.age);

class Doc {
    var species: String;
    
    init(someSpecies: String){
        self.species = someSpecies
    }
}
var lab = Doc(someSpecies: "Black Lab");
print(lab.species);




