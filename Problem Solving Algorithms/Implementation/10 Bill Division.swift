//Problem definition: https://www.hackerrank.com/challenges/bon-appetit/problem

import Foundation

let firsLineInput = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = firsLineInput[0]
let k = firsLineInput[1]

let bill = readLine()!.split(separator: " ").compactMap { Int($0) }
let brianCharged = Int(readLine()!)!

func bonAppetit(bill: [Int], k: Int, brianCharged: Int) -> Void {
    
    //sum of all bill array elements
    let sumOfBill = bill.reduce(0, +)
    let annaShouldCharge = (sumOfBill - bill[k]) / 2
    
    
    if brianCharged == annaShouldCharge {
        print("Bon Appetit")
    } else {
        print(brianCharged - annaShouldCharge)
    }
    
}

bonAppetit(bill: bill, k: k, brianCharged: brianCharged)