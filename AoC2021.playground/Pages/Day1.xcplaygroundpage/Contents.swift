import Foundation
import Algorithms

let input = inputDay1.components(separatedBy: .newlines).map { Int($0)! }
var counter = 0

//Part 1
var start = CFAbsoluteTimeGetCurrent()

for x in 1...input.count-1 {
    counter += input[x] > input[x-1] ? 1 : 0
}
print(CFAbsoluteTimeGetCurrent() - start, "ms")
print(counter)

//Part 2
counter = 0
start = CFAbsoluteTimeGetCurrent()
for x in 1...input.count-3 {
    counter += input[x...x+2].reduce(0, +) > input[x-1...x+1].reduce(0, +) ? 1 : 0
}
print(CFAbsoluteTimeGetCurrent() - start, "ms")
print(counter)

