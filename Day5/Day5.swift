func foo() {} // this is function declaration
func bar(param: Int) {} // this is also function declaration with parameter.
func another() -> Int { return 10 } // this is function with return value of int

func square(_ number: Int) -> Int { // omitting external parameter and number internal parameter
    return number * number
}

func sayHello(to name: String = "Unknown") { // this is default parameters
    print("Say hello to \(name)")
}

print("hello", terminator: " ") // print is variadic function

func variadicExample(args: Int...) { // this is variadic function
    for arg in args {
        // to do
    }
}

variadicExample(args: 1, 2, 3, 4)

enum PasswordError: Error {
    case obvious
}

func throwExample(_ password: String) throws -> Bool { // this is throwing function
    if password = "password" {
        throw PasswordError.obvious
        return false
    }
    
    return true
}

let result = try? throwExample("password") // running throwing functions
// result is type of Bool?

// Function parameters in swift are constants. We can't change. If we want do change function parameter we have to use inout keyword.

func changeParameter(number: inout Int) { // this is not let and this is not call by value
    number += 5
} // this is call by reference

var x = 12
changeParameter(number: &x) 
