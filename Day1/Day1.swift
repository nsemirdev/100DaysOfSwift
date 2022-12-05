import Foundation

var str = "Hello, Swift Language!" // this will create variable
var int = 10 // the type of variable is int. this uses type inference
var int3 = 8_000_000 // we can use underscore(_) to make the number human readable
var str = "This is string" // this is string
var multi_line = """
This is multiline string, first line and last line not include
for this string. And we can use "this" in our string.
"""

var another_multi_line = """
This is the same multiline string but it \
is not use new line because of '\' \
backslach.
"""

var d1 = 8.16 // this is double data type
var b1 = true // this is boolean data type

var interpolated_string = """
This is multiline string with string interpolation.
What does it mean? It means we can use datas in our string.
Like this : \(d1) \(d2) andd \(multi_line).
5 + 3 = \(5 + 3)
"""

let str_constant = "Hello, I'm constant" // this will create constant
// constants can't be changed.
let x: Int = 12 // this uses Type annotations.
let y = 12 // this uses Type inference.
// Swift is strongly typed language. We can't assign different type of variables.

