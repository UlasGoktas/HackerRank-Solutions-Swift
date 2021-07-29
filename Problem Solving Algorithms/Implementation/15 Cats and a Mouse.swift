//Problem definition: https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {

    if abs(x - z) > abs(y - z) {
        return "Cat B"
    } else if abs(x - z) < abs(y - z) {
        return "Cat A"
    } else {
        return "Mouse C"
    }
    
}

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for _ in 1...q {
    guard let xyzTemp = readLine() else { fatalError("Bad input") }
    let xyz = xyzTemp.split(separator: " ").map{ String($0) }

    guard let x = Int(xyz[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    guard let y = Int(xyz[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    guard let z = Int(xyz[2].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    let result = catAndMouse(x: x, y: y, z: z)
    print(result)
}