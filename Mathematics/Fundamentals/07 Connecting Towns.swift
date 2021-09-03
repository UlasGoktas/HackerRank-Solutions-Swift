//Problem definition: https://www.hackerrank.com/challenges/connecting-towns/problem

import Foundation

func connectingTowns(n: Int, routes: [Int]) -> Int {
    
    var sum = 1
    
    for road in routes {
        //1_234_567 is same as 1234567        
        sum = (sum * road) % 1_234_567
    }
    
    return sum 

}

let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!
    
    let routes = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    let result = connectingTowns(n: n, routes: routes)
    print(result)
}