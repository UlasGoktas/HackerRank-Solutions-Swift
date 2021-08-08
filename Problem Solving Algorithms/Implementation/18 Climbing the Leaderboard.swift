//Problem definition: https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem

import Foundation

let rankedCount = Int(readLine()!)!
var ranked = readLine()!.split(separator: " ").compactMap { Int($0) }
ranked = NSOrderedSet(array: ranked).array as! [Int]

let playerCount = Int(readLine()!)!
let player = readLine()!.split(separator: " ").compactMap { Int($0) }


func climbingLeaderboard(ranked: [Int], player: [Int]) -> Void {
    
    for score in player {
        var i = ranked.count - 1
        
        while i >= 0 {
            if score >= ranked[i] {
                i -= 1
            } else {
                print(i + 2)
                break
            }
        }
        if i < 0 {
            print(1)
        }
    }
    
}

climbingLeaderboard(ranked: ranked, player: player)