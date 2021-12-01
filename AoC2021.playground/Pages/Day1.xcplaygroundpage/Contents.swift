let input = inputDay1.split { $0 == "\n" }.map { Int($0)! }
var counter = 0

//Part 1
for x in 1...input.count-1 {
    counter += input[x] > input[x-1] ? 1 : 0
}
print(counter)

//Part 2
counter = 0
for x in 1...input.count-3 {
    counter += input[x...x+2].reduce(0, +) > input[x-1...x+1].reduce(0, +) ? 1 : 0
}
print(counter)
