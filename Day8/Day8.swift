import Foundation

struct Sport { // struct definition
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String { // computed properties
        // will be called when access it
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var tennis = Sport(name: "Tennis", isOlympicSport: false) // creating an instance from blueprint
print(tennis.isOlympicSport)


struct Progress {
    var task: String
    var amount: Int { // these are property observers
        // willset called when property is about the change
        // didset called when property has been changed
        didSet {
            print("bla bla")
        }
        willSet {
            print("test")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct City { // struct is immutable
    // if we want to change a property of struct in a method
    // we have to use mutating keyword before func keyword
    var population: Int
    
    mutating func addPopulation(_ number: Int) {
        population += number
    }
    
    func collectTaxes() -> Int { // method of struct
        return population * 1000
    }
}

// String is a struct
let str = "Bla bla bla"
str.count // property of string
str.hasPrefix("Do") // methods of string
str.uppercased()
str.sorted()
