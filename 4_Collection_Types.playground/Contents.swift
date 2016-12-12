//: Playground - noun: a place where people can play

import UIKit

var someInts = [Int]()
var someInts2: [Int] = []
var someInts3 = Array<Int>()
var someInts4: Array<Int> = []

someInts.append(3)
someInts = []
someInts.removeAll()

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

var shopingList: [String] = ["Eggs", "Milk"]
var shopingList2 = ["Eggs", "Milk"]

print("The shopping list contains \(shopingList.count) items")

if shopingList.isEmpty {
    print("The shopping list is empty")
} else {
    print("The shopping list is not empty")
}
shopingList.append("Flour")
shopingList += ["Baking Powder"]
shopingList += ["Chocolaete Spread", "Cheese", "Butter"]

var firstItem = shopingList[0]
shopingList[0] = "Six eggs"

shopingList[4...6] = ["Bananas", "Apples"]
shopingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shopingList.remove(at: 0)
shopingList.insert(contentsOf: ["m", "n"], at: 1)
let apples = shopingList.removeLast()
print(shopingList)

shopingList.first
shopingList.last

for item in shopingList {
    print(item)
}

for item in shopingList.reversed() {
    print(item)
}

for (index, value) in shopingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

for (index, value) in shopingList.enumerated().reversed() {
    print("Item: \(index): \(value)")
}

var letters = Set<Character>()
var letters2: Set<Character> = []

letters.insert("a")
letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]
var favoriteGenres3: Set<String> = []
var favoriteGenres4 = Set<String>()

print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky")
} else {
    print("I have particular music preferences")
}

favoriteGenres.insert("jazz")

if let removeGenre = favoriteGenres.remove("Rock") {
    print("\(removeGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐂", "🐔", "🐑"]
let cityAnimals: Set = ["🐛", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
houseAnimals.isStrictSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isStrictSuperset(of: houseAnimals);
farmAnimals.isDisjoint(with: cityAnimals)

var namesOfIntegers = [Int: String]()
var namesOfIntegers2: [Int: String] = [:]
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]
namesOfIntegers.removeAll()

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("The airpots dictionary contains \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty")
} else {
    print("The airports dictionary is not empty")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue)")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary")
}

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removeValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removeValue).")
} else {
    print("The airports dictionary does not contain a value for DUB")
}

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

