//: Playground - noun: a place where people can play

import UIKit

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

throw VendingMachineError.insufficientFunds(coinsNeeded: 5)


struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinsDeposited = 0
    
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

struct PurchasedSnack {
    let name: String
    init(name: String, vendingMaching: VendingMachine) throws {
        try vendingMaching.vend(itemNamed: name)
        self.name = name
    }
}

func buySomeThing() throws {
    let vendingMachine = VendingMachine()
    vendingMachine.coinsDeposited = 8
    
    do {
        try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    } catch VendingMachineError.invalidSelection {
        print("Invaild Selection")
    } catch VendingMachineError.outOfStock {
        print("Out if Stock")
    } catch VendingMachineError.insufficientFunds(let coinsNeeded) {
        print(coinsNeeded)
    }
}

func someThrowingFuction() throws -> Int {
    //...
    return 42
}

let x = try? someThrowingFuction()

let y: Int?
do {
    y = try someThrowingFuction()
} catch {
    y = nil
}

struct Data {
    
}

func fetchDataFromDisk() throws-> Data {
    return Data()
}

func fetchDataFormServer() throws -> Data {
    return Data()
}

func fetchData() -> Data? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFormServer() { return data }
    return nil
}

enum LoadImageError: Error {
    case imageNotExists
}

func loadImage(atPath path: String) throws -> UIImage {
    let image = UIImage(contentsOfFile: path)
    
    guard let newImage = image else {
        throw LoadImageError.imageNotExists
    }
    
    return newImage
}

let photo = try! loadImage(atPath: "./Resouses/John Appleseed.jpg")

func exists(_ filename: String) -> Bool {
    return FileManager.default.fileExists(atPath: filename)
}

//func processFile(filename: String) throws {
//    if exists(filename) {
//        let file = open(filename, 20)
//        defer {
//             close(file)
//        }
//        
//        while let line = try file.readline() {
//            // 处理文件
//        }
//    }
//}
