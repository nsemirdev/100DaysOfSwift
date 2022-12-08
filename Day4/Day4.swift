let arr = [1, 2, 3]

for item in arr {
    print(item)
}


for j in 0...1 {
    print(j)
}

for _ in 0...10 {}

while true {} // infinite loop

var i = 1

while i <= 20 {
    i += 1
}

i = 1

repeat {
    i += 1
} while i != 10

for i in 0...10 {
    break // for exit
}

for i in 0...10 {
    continue // for skipping
}

outerLoop: for i in 0...10 {
    for j in 0...10 {
//        break // which loop to break?  inner loop
        break outerLoop // break for outer loop
    }
}


