//Problem definition: https://www.hackerrank.com/challenges/30-scope/problem?h_r=next-challenge&h_v=zen

import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    
    init(a: [Int]) {
        self.elements = a
        maximumDifference = 0
    }
    
    func computeDifference() -> Void {
        maximumDifference = elements.max()! - elements.min()!
    }

} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
