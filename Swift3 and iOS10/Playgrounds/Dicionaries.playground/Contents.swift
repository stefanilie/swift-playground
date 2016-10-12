//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]();

namesOfIntegers[3]="Three";
namesOfIntegers[44]="FourtyFour";

//This clears the dictionary. Deletes everything.
namesOfIntegers = [:];

var airports : [String: String] = ["MUC": "Munchen", "BUC": "Bucharest"]

print("the airports dictionary has \(airports.count) elements")

airports["LHR"] = "London";

for key in airports.keys{
    print("Key: \(key)")
}

for value in airports.values{
    print("Value: \(value)");
}

/**
 Declare an empty array of type String
 Declare an explicit array of type Double and initialize it with 4 values
 Declare an array and initialize it with 5 values of any type using type inference
 Use append 3 times in each array
 Use removeAt in each array
 Use removeAll on one array
 Use a new array feature that you haven't learned yet
 */

var emptyArraay = [String]();
var explicit : [Double] = [0.58, 0.59, 0.60, 0.69]
var inference = ["ciorba", "de", "burta", "ardei", "smantana"]

emptyArraay.append("covrig");
explicit.append(1.00);
inference.append("colesterol")

emptyArraay.remove(at: 0);
explicit.remove(at: 4);
inference.remove(at: 1);

emptyArraay.removeAll();
emptyArraay.append(contentsOf: inference)

/**
 Create an empty array of type Int called oddNumbers
 Using a standard for-in loop add all odd numbers less than or equal to 100 to the oddNumbers array
 Create a second array called sums of type Int
 Using a for-in, iterate through oddNumbers array and add the current iteration value + 5 to the sums array
 Using a repeat while loop, iterate through the sums array and print "The sum is: x" where x is the current value of the iteration (ie The sum is: 15
 */

var oddNumbers = [Int]();
for i in 1..<101{
    if i%2 != 0{
        oddNumbers.append(i);
    }
}

var sumsOfTypeInt = [Int]();
for num in oddNumbers{
    sumsOfTypeInt.append(num+5);
}
var i = 0;
repeat{
    print("The sum is: \(sumsOfTypeInt[i])");
    i+=1;
}while(i<sumsOfTypeInt.count)



