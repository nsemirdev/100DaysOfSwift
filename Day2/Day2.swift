
let arr = [1, 2, 3, 4] // this is an array of int
arr[1] // we can reach an element in the array
let set = Set(arr) // this is a set made by array
let set2: Set<Int> = ["emir", "paul", "hudson"] // this is a set with type annotation
// set contains unique items in it.

let tuple: (Int, Double) = (1, 3.14) // this is a tuple
tuple.0 // we can reach like this
tuple.1
let tuple2: (String, Int) = (name: "emir", age: 12) // this is another way of creating tuple.

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
] // this is a dictionary

heights["Taylor Swift"] // this is an optinal
heights["Taylor Swift", default: "Unknown"] // this is not an optional

let emptyArray = [Int]()
let emptySet: Set<Int> = []
let emptyDict: Dictionary<String, Int> = []

enum Result {
    case success
    case failure
}

let result = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Footbal") // enum associated values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mart
}

let planet = Planet(rawValue: 2) // enum raw values

