func travel(action: (String) -> Void) {
    action("test")
}

travel { str in
    print(str)
}

travel { print($0) } // this is shorthand parameter names in closure.
// starts from zero and goes on.

func travel2() -> (String) -> Void {
    return {
        print("im going to \($0)")
    }
}

let result = travel2()
result("london")

travel2()("istanbul")

func capturingValues() -> (String) -> Void {
    var counter = 1 // capturing by closure
    // didn't deleted from memory
    return {
        print("im going to \($0), \(counter)")
    }
}
