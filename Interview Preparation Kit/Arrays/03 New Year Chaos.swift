//Problem definition: https://www.hackerrank.com/challenges/new-year-chaos/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

import Foundation

func minimumBribes(array: [Int]) -> Void {
    
    var bribesCount: Int = 0
    var isTooChaoTic: Bool = false
    
    for i in stride(from: array.count - 1, through: 0, by: -1) {
        
        if array[i] - (i + 1) > 2 {
            isTooChaoTic = true
            break
        }
        
        for j in stride(from: max(0, array[i] - 2), to: i, by: 1) {
            
            if array[j] > array[i] {
                bribesCount += 1
            }
        }
    }
    
    if isTooChaoTic {
        print("Too chaotic")
    } else {
        print(bribesCount)
    }

}

guard let t = Int(readLine()!) else { fatalError("Bad input") }

for _ in 1...t {
    guard let _ = Int(readLine()!) else { fatalError("Bad input") }

    let array = readLine()!.split(separator: " ").compactMap { Int($0) }

    minimumBribes(array: array)
}