import Foundation

var x = 12 + 34 // this is arithmetic operators
x = 12 - 23
x = 3 * 5
x = 5 / 2
x = 8 % 2

let str = "one string" + "another string" // this operator overloading in swift

x += 3
x *= 2
x /= 3 // these are compound assignment operators

x == 2 // this is comparison operators
x != 2
x < 4
x > 6
x <= 10
x >= 20
"emir" > "paul"

if x > 10 { // this is if condition in swift
    
}

if x > 0 && str == "emir" { // if the first one is false don't look second one
    
}

if x > 0 || str == "emir" { // if the first one is true don't look second one
    
}

x > 0 ? print("emir") : print("ahmet")
// condition ? when condition true : when condition false


switch x { // this is switch statement in swift
case 1:
    break
case 2:
    break
case 3:
    break
default:
    break
}


let a = 0..<5 // half range operator
let b = 0...5 // closed range operator

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
