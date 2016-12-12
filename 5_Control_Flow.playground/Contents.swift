//: Playground - noun: a place where people can play

import UIKit

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

for index in (1...5).reversed() {
    
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

var square = 0
var diceRoll = 0
while square < finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}
print("Game over!")

let finalSquare2 = 25
var board2 = [Int](repeating: 0, count: finalSquare2 + 1)
board2[03] = +08; board2[06] = +11; board2[09] = +09; board2[10] = +02
board2[14] = -10; board2[19] = -11; board2[22] = -02; board2[24] = -08
var square2 = 0
var diceRoll2 = 0

repeat {
    square2 += board2[square2]
    diceRoll2 += 1
    if diceRoll2 == 7 { diceRoll = 1 }
    
    square2 += diceRoll2
    
} while square < finalSquare
print("Game over!")

var temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wer sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

let anoterCharacter: Character = "a"
switch anoterCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

let approxmateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approxmateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are\(naturalCount)\(countedThings)")

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("")
case (_, 0):
    print("")
case (-2...2, -2...2):
    print()
default:
    print()
}

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print()
case (0, let y):
    print()
case let (x, y):
    print()
}

let yeAnotherPoint = (1, -1)
switch yeAnotherPoint {
case let (x, y) where x == y:
    print()
case let (x, y) where x == -y:
    print()
case let (x, y):
    print()
}

let someCharacter2: Character = "e"
switch someCharacter2 {
case "a", "e", "i", "o", "u":
    print()
case "b", "c", "d", "f", "g":
    print()
default:
    print()
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print()
default:
    print()
}

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRomove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput.characters {
    if charactersToRomove.contains(character) {
        continue
    } else {
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)

let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "一":
    possibleIntegerValue = 1
case "2", "二":
    possibleIntegerValue = 2
case "3", "三":
    possibleIntegerValue = 3
case "4", "四":
    possibleIntegerValue = 4
default:
    break
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, an also"
    fallthrough
default:
    description += " an integer."
}
print(description)

// !!! My god!! Infinite loop!!
//gameLoop: while square != finalSquare {
//    diceRoll += 1
//    if diceRoll == 7 {
//        diceRoll = 1
//    }
//    switch square + diceRoll {
//    case finalSquare:
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        continue gameLoop
//    default:
//        square += diceRoll
//        square += board[square]
//    }
//}
//print("Game over!")

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print()
        return
    }
    
    print()
}

greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])

if #available(iOS 10, macOS 10.12, *) {
    
} else {
}
