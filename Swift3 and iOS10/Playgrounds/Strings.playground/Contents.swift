//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground"

var firstName = "Jack"
var secondName = "Bauer"

var age = 45
var fullName = firstName + " " + secondName
var fullName2 = "\(firstName) \(secondName) is \(age)"

fullName.append(" III")
var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized

var chatroomAnnoyingGuy = "PLEASE HELP ME NOW"
var lowercasedChat = chatroomAnnoyingGuy.lowercased()

var sentence = "What the Fuck!!? Shit this is crazy!"

if sentence.contains("Fuck") || sentence.contains("Shit") {
    sentence.replacingOccurrences(of: "Fuck", with: "f***")
    sentence.replacingOccurrences(of: "Shit", with: "S***")
}