import Foundation

class SomeClass { // default don't have memberwise initializer.
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class InheritedClass: SomeClass { // inheritance
    func foo() {
        print("im inheritedClass")
    }
    init() {
        super.init(name: "test") // you have to call super class initializer.
    }
}

final class AnotherClass: InheritedClass { // this is final class
    // it can not be inherited from another class!
    override func foo() { // this is overriding a method
        print("im anotherClass")
    }
    
    deinit {
        print("test")
    }
}

// Classes are reference type
// Structs are value type

// Classes are mutable (self is not constant)
// Structs are immutable (self is constant)
