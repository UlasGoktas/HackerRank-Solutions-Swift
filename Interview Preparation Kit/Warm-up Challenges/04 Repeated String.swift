//Problem definition: https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

import Foundation

let str = readLine()!

let length = Int(readLine()!)!

func repeatedString(str: String, length: Int) -> Int {
    
    var count = 0
    var countLast = 0
    
    let x = length / str.count
    let y = length % str.count
    
    let endIndex = str.index(str.startIndex, offsetBy: y)
    let range: Range<String.Index> = str.startIndex..<endIndex
    
    for i in str {
        if i == "a" {
            count += 1        
        }
    }
    
    for i in str[range] {
        if i == "a" {
            countLast += 1
        }
    }
    
    return (x * count) + countLast
    
}

let result = repeatedString(str: str, length: length)
print(result)