//: Playground - noun: a place where people can play

// The Basics

import UIKit

var str = "Hello, playground"

let maximunNumberOfLoginAttemps = 10
var currentLoginAttemp = 0

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

let pi = 3.1415926
let 你好 = "你好世界"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bojour!"

print(friendlyWelcome)
print(friendlyWelcome, terminator:"")
print("The current value of friendlyWelcome is \(friendlyWelcome)")

// 这是一个注释
/* 这是一个
 多行注释 */
/* 这是第一个多行注释的开头 
／* 这个第二个被嵌套的多行注释 *／
 这是第一个多行注释的结尾 */

let cat = "?" ; print(cat)

let minValue = UInt8.min
let maxValue = UInt8.max

let meaningOfLife = 42
let pi2 = 3.14159
let anotherPi = 3 + 0.4159

let decimalInterger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi3 = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi)

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible")
}

let i = 1
if i == 1 {
    //
}

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1))")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)' has an integer value of \(actualNumber)")
} else {
    print("'\(possibleNumber)' could not be converted to an integer")
}

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString)
}

if let definitedString = assumedString {
    print(definitedString)
}

func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
} catch {
}

func makeASandwich() throws {
    
}

do {
    try makeASandwich()
    
} catch {
    
}

let age = -3
assert(age >= -3, "A person's age cannot be less than zero.")
assert(age == -3)


