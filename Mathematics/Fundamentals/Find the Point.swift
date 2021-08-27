//Problem definition: https://www.hackerrank.com/challenges/find-point/problem

import Foundation

func findPoint(px: Int, py: Int, qx: Int, qy: Int) -> Void {
    
    let rx = 2 * qx - px
    let ry = 2 * qy - py
    
    print("\(rx) \(ry)")
    
}

let n = Int(readLine()!)!

for _ in 1...n {
    let inputArray = readLine()!.split(separator: " ").compactMap { Int($0) }

    let px = inputArray[0]
    let py = inputArray[1]
    let qx = inputArray[2]
    let qy = inputArray[3]

    findPoint(px: px, py: py, qx: qx, qy: qy)
}