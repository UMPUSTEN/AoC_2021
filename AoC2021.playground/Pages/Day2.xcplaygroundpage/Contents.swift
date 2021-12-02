import Foundation
let input = inputDay2.components(separatedBy: .newlines).map { $0.components(separatedBy: .whitespacesAndNewlines) }
//let inputDict = input.reduce(into: [String: Int]()) { result, element in
//    result[element[0]] = (result[element[0]] ?? 0) + Int(element[1])!
//}
//
//print(inputDict["forward"]!*(inputDict["down"]!-inputDict["up"]!))

//Part 1
let part1 = input.reduce((horizontal: 0, depth: 0)) { position, direction in
    guard let distance = Int(direction[1]) else { return (position.horizontal, position.depth) }
    
    switch direction[0] {
    case "forward":
        return (position.horizontal + distance, position.depth)
    case "up":
        return (position.horizontal, position.depth - distance)
    case "down":
        return (position.horizontal, position.depth + distance)
    default:
        return (position.horizontal, position.depth)
    }
}

part1.depth * part1.horizontal

//Part 2
let part2 = input.reduce((horizontal: 0, depth: 0, aim: 0)) { position, direction in
    guard let distance = Int(direction[1]) else { return (position.horizontal, position.depth, position.aim) }
    
    switch direction[0] {
    case "forward":
        return (position.horizontal + distance, position.depth + distance * position.aim, position.aim)
    case "up":
        return (position.horizontal, position.depth, position.aim - distance)
    case "down":
        return (position.horizontal, position.depth, position.aim + distance)
    default:
        return (position.horizontal, position.depth, position.aim)
    }
}

part2.horizontal*part2.depth
