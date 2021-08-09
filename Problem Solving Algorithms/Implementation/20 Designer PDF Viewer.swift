//Problem definition: https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

import Foundation

let heights = readLine()!.split(separator: " ").compactMap { Int($0) }
guard let word = readLine() else { fatalError("Bad input") }

func designerPdfViewer(heights: [Int], word: String) -> Int {
    
    var wordHeights: [Int] = []
    var maxHeight: Int = 0
    
    for letter in word {
        // a's ascii value is 97
        wordHeights.append(Int(letter.asciiValue!) - 97)
    }
    
    for i in wordHeights {
        maxHeight = max(maxHeight, heights[i])
    }
    
    return maxHeight * word.count
}

let result = designerPdfViewer(heights: heights, word: word)
print(result)