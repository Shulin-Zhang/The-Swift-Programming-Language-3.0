//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

class Person2 {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: Person2?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person2?
var unit4A: Apartment?

john = Person2(name: "John Appleseed2")
unit4A = Apartment(unit: "4A2")

john!.apartment = unit4A;
unit4A!.tenant = john

john = nil
unit4A = nil


class Person3 {
    let name: String
    init(name: String) { self.name = name }
    var appartment: Apartment3?
    deinit {
        print("\(name) is being deinitialied")
    }
}

class Apartment3 {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person3?
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

var john3: Person3?
var unit4A3: Apartment3?

john3 = Person3(name: "John Appleseed3")
unit4A3 = Apartment3(unit: "4A3")

john3!.appartment = unit4A3
unit4A3!.tenant = john3

john3 = nil
unit4A3 = nil


class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitailized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {
        print("Car \(number) is being deinitialized")
    }
}

var john5: Customer? = Customer(name: "John Applesed (customer)")
john5!.card = CreditCard(number: 1234_5678_9012_3456, customer: john5!)

john = nil

class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Canada", capitalName: "Ottawa")
print("\(country.name)'s capital city is called \(country.capitalCity.name)")


class HTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        [unowned self] in
        
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name)/>"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello world")
print(paragraph!.asHTML)

paragraph = nil
