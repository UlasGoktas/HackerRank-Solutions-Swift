//Problem definition: https://www.hackerrank.com/challenges/30-operators/problem
import Foundation

// Meal price
let mealCost = Double(readLine()!)!

// Tip percent
let tipPercent = Int(readLine()!)!

// Tax percent
let taxPercent = Int(readLine()!)!

func calculateTotalCost(mealCost: Double, tipPercent: Int, taxPercent: Int) -> Void {

    let tipCost: Double = mealCost * Double(tipPercent) / 100
    let taxCost: Double = mealCost * Double(taxPercent) / 100
    let totalCost: Double = mealCost + tipCost + taxCost

    print(Int(round(totalCost)))
    
}

calculateTotalCost(mealCost: mealCost, tipPercent: tipPercent, taxPercent: taxPercent)