protocol HaveToImplement {
    func foo()
}

class Test: HaveToImplement {
    func foo() { // Test class have to implement this
        
    }
}

protocol Identifiable {
    var id: String { get set }
}

struct AnotherTest: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("id is \(thing.id)")
}

struct MultipleProtocol: Identifiable, HaveToImplement {
    var id: String
    
    func foo() {}
}

extension Int {
    // you cant use stored properties here
    // you can use computed properties
    func squared() -> Int {
        return self * self
    }
}

extension HaveToImplement {
    func foo() {
        print("its default implementation of protocol")
    }
}
