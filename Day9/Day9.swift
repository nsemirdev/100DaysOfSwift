struct Test {
    var x: String
    var y: Int
}

var user = Test(x: "emir", y: 10) // free initializer

class Another {
    var x: String
    var y: Int
    
    init(x: String, y: Int) { // classes don't has free initializer
        self.x = x // referencing to the current instance with self keyword
        self.y = y
    }
}


struct FamilyTree {
    init() {
        print("creating family tree")
    }
}

struct Person {
    static let type = "Human"
    private var name: String // you can't reach outside of struct
    fileprivate var anotherName = "" // you can't reach outside of file
    lazy var familyTree = familyTree() // will be created once you accessed.
    
    init(name: String) {
        self.name = name
    }
    
    static func foo() {
        print("it's static function")
    }
}
