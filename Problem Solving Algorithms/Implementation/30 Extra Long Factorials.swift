//Problem definition: https://www.hackerrank.com/challenges/extra-long-factorials/problem

import Foundation

func multiply(x: String, y: Int) -> String {

        let temp: [Int] = x.compactMap { Int(String($0))! * y }
        var result = ""
        var remainder = 0
        
        for number in temp.reversed() {
            let total = number + remainder
            remainder = total / 10
            result.insert(Character(String(total % 10)), at: result.startIndex)
        }
        
        while remainder > 0 {
            result.insert(Character(String(remainder % 10)), at: result.startIndex)
            remainder /= 10
        }

        return result
    }

func extraLongFactorials(n: Int) -> String {

    var result = "1"
    
    for i in 1...n {
        result = multiply(x: result, y: i)
    }
    
    return result

}

guard let n = Int(readLine()!) else { fatalError("Bad input") }

let result = extraLongFactorials(n: n)
print(result)