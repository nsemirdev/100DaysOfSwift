
var closure = { // function without name
    print("I'm driving")
}

closure() // we can call like this

var driving = { (place: String) in // closure that accepts parameter
    print("Im going to \(place)")
}

var closureWithReturn = { (param: Int) -> Int in // closure with return type
    return param * param
}


func foo(closure: (Float) -> Float) { // this function accepts a closure as a parameter
    let result = foo(3.12)
    print(result)
}

foo { f in // this is trailing closure syntax.
    return f
}


