//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let (x, y) = (1, 2)

"hello, " + "world"

9 % 4
-9 % 4
9 % -4

let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let alsoMinusSix = +minusSix

var a = 1
a += 2

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

"aaa" > "bbb"
(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")

let contentHeight = 40
let hasheader = true
let rowHeight = contentHeight + (hasheader ? 50 : 20)

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName
userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("第\(i + 1)个人叫\(names[i])")
}

let allowedEntry = false
if !allowedEntry {
    print("ACCSS DENIED")
}

let enteredDoorCode = true
let passwdRetinaScan = false
if enteredDoorCode && passwdRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if enteredDoorCode && passwdRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


