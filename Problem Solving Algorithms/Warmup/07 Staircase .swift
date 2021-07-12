//Problem definition: https://www.hackerrank.com/challenges/staircase/problem

import Foundation

let staircaseHeight: Int = Int(readLine()!)!

func staircase(staircaseHeight: Int) -> Void {
    
    for i in stride(from: 1, through: staircaseHeight, by: 1) {
        for j in stride(from: staircaseHeight, through: 1, by: -1){
            if j > i {
                print(" ", separator: " ", terminator: "")
            } else {
                print("#", separator: " ", terminator: "")
            }
        }
        print("")
    }
    
}

staircase(staircaseHeight: staircaseHeight)