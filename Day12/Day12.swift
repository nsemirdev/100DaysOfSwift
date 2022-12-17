var age: Int? // it's an optional type

age = nil
age = 15

age! // this is unwrapping an optional
// program will crash if its value is nil

if let age { // unwrap safely
    
}

guard let age else { fatalError("test") } // unwrap safely
// if it is nil you need to exit immediatly
// name of scope is more than if let statement

var str: String? = nil

str ?? "default value" // this is nil coelascing operator

let i: Int! = nil // its implicitly unwrapped optional

i // crash

let names = ["John", "Paul", "George"]

names.first?.uppercased() // this is optional chaining

let str = "5"
let num = Int(str) // failable initializer
// in some cases it can't convert String to Int



