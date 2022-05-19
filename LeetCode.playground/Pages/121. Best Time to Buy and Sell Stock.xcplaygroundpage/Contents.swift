//: [Previous](@previous)

import Foundation

let arr = [7,1,5,3,6,4]
let arr2 = [7,6,4,3,1]

func maxProfit(_ prices: [Int]) -> Int {
    var starting = prices[0]
    var max = 0
    
    for i in 0..<prices.count {
        if prices[i] < starting {
            starting = prices[i]
        } else if prices[i] > starting {
            let difference = prices[i] - starting
            if difference > max {
                max = difference
            }
        }
    }
    
    return max
}

print(maxProfit(arr))
print(maxProfit(arr2))

//: [Next](@next)
