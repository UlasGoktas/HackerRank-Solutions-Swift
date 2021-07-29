//Problem definition: https://www.hackerrank.com/challenges/electronics-shop/problem

import Foundation

guard let bnmTemp = readLine() else { fatalError("Bad input") }
let bnm = bnmTemp.split(separator: " ").map{ String($0) }

guard let b = Int(bnm[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let keyboardsTemp = readLine() else { fatalError("Bad input") }
let keyboards: [Int] = keyboardsTemp.split(separator: " ").map {
    if let keyboardsItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return keyboardsItem
    } else { fatalError("Bad input") }
}

guard let drivesTemp = readLine() else { fatalError("Bad input") }
let drives: [Int] = drivesTemp.split(separator: " ").map {
    if let drivesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return drivesItem
    } else { fatalError("Bad input") }
}

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    
    var sum : Int = -1
    
    for i in keyboards {
        for j in drives {
            
            if i + j <= b {
                sum = max(sum, i + j)
            }
            
        }    
    }
    
    return sum

}

let moneySpent = getMoneySpent(keyboards: keyboards, drives: drives, b: b)
print(moneySpent)