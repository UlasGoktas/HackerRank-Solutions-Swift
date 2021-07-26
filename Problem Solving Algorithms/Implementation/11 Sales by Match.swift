//Problem definition: https://www.hackerrank.com/challenges/sock-merchant/problem

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let array: [Int] = arTemp.split(separator: " ").map {
    if let arItem = Int($0) {
        return arItem
    } else { fatalError("Bad input") }
}

guard array.count == n else { fatalError("Bad input") }

func sockMerchant(array: [Int]) -> Int {
    
    var socksArray = array
    var pairs: Int = 0
    
    socksArray.sort()
    
    while socksArray.count >= 2 {
        if socksArray[0] == socksArray[1] {
            pairs += 1
            socksArray.removeFirst(2)
        } else {
            socksArray.removeFirst()
        }
        
    }
    
    return pairs

}

let result = sockMerchant(array: array)
print(result)