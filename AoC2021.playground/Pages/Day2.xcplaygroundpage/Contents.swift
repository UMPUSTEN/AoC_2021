import Foundation
let input = inputDay2.components(separatedBy: .newlines).map { $0.components(separatedBy: .whitespacesAndNewlines) }

let inputDict = input.reduce(into: [String: Int]()) { result, element in
    result[element[0]] = (result[element[0]] ?? 0) + Int(element[1])!
}


//Part 1
print(inputDict["forward"]!*(inputDict["down"]!-inputDict["up"]!))
//Note: Actually I did not expact this to work. Since "up" should not be able to be < 0? ..

//Part 2
var position = (horizontal: 0, depth: 0)
var aim = 0
input.forEach { direction in
    guard let distance = Int(direction[1]) else { return }
    switch direction[0] {
    case "forward":
        position.horizontal += distance
        position.depth += distance*aim
    case "up":
//        position.depth -= distance
        aim -= distance
    case "down":
//        position.depth += distance
        aim += distance
    default: break
    }
    print(position)
}
print(position.horizontal*position.depth)
