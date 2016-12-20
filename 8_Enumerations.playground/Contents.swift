//: Playground - noun: a place where people can play

import UIKit

enum SomeEnumeration {
    
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directitionToHead = CompassPoint.west
directitionToHead = .east

directitionToHead = .south
switch directitionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sum rise")
case .west:
    print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMN")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print()
case .qrCode(let prodctCode):
    print()
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print()
case let .qrCode(productCode):
    print()
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, enptune
}

enum CompassPoint2: String {
    case north, south, east, west
}

let earthsOrder = Planet2.earth.rawValue
let sunsetDirection = CompassPoint2.west.rawValue

let possiblePlanet = Planet2(rawValue: 7)

let positionToFind = 11
if let somePlanet = Planet2(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print()
    default:
        print()
    }
} else {
    print()
}

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case mutiplication(ArithmeticExpression, ArithmeticExpression)
}

indirect enum ArithmeticExpression2 {
    case number(Int)
    case addition(ArithmeticExpression2, ArithmeticExpression2);
    case mutiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.mutiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value;
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .mutiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
