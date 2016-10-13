//: Playground - noun: a place where people can play

import UIKit

//Question mark is for when we don't know 
// if we will have a value in there
var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings=10;

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

if let v = vehicle{
    if let m = v.model{
        print(m)
    }
}

if let v = vehicle, let m = v.model{
    print(m);
}