//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let someString = "Some string literal value"
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += " and carriage"

for character in "Dog!？".characters {
    print(character, terminator: "")
}

let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "？"]
let catString = String(catCharacters)
print(catString)

let string1 = "hello"
let string2 = "there"
var welcome = string1 + string2;

var instruction = "look over"
instruction += string2

welcome.append(exclamationMark)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let unusualMenagerie = "Koala, Snail, Penguin, Dromedary"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")

word += "\u{301}"
print(word)
print("the number of characters in \(word) is \(word.characters.count)")

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before:greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)

for index in greeting.characters.indices {
    print("\(greeting[index])", terminator: "")
}

var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)
welcome2.insert(contentsOf: " there".characters, at: welcome2.index(before: welcome2.endIndex))
welcome2.remove(at: welcome2.index(before: welcome2.endIndex))

let range = welcome2.index(welcome2.endIndex, offsetBy: -6) ..< welcome2.endIndex
welcome2.removeSubrange(range)

let quotation = "We're a lot alike, you and I."
let sameQuotion = "We're a lot alike, you and I."
if quotation == sameQuotion {
    print("These two strings are considerd equal")
}

let eAcuteQuestion = "Voulez-vous un caf\u{E9}"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}"

if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considerd equal")
}

let latinCaptitalletterA: Character = "\u{41}"
let cyrilliCatitalLetterA: Character = "\u{0410}"
if latinCaptitalletterA != cyrilliCatitalLetterA {
    print("These two characters are not equivalent")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes: \(cellCount) cell scenes")

let dogString = "Dog!!"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}