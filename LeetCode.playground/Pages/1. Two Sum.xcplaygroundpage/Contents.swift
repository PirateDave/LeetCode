//: [Previous](@previous)

import Foundation

let arr = [2,7,11,15]
let targ = 9

let arr2 = [2,3,4]
let targ2 = 6

let arr3 = [3,3]
let targ3 = 6

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 0 else {
        return []
    }
    
    var dict = [Int: Int]()
    // For every number n,
    for (currentIndex, n) in nums.enumerated() {
        // Find the complement to n that would sum up to the target.
        let complement = target - n
        
        // Check if the complement is in the dictionary.
        if let complementIndex = dict[complement] {
            return [complementIndex, currentIndex]
        }
        
        // Store n and its index into the dictionary.
        dict[n] = currentIndex
    }
    
    return []
}

print(twoSum(arr, targ))
print(twoSum(arr2, targ2))
print(twoSum(arr3, targ3))

//: [Next](@next)
