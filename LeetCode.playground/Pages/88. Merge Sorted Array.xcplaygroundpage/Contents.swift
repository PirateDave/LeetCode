//: [Previous](@previous)

import Foundation

var arr1 = [1,2,3,0,0,0]
let arr2 = [2,5,6]

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    guard m + n > 0 else { return }
    let totalSize = m + n
    var output = Array(repeating: 0, count: totalSize)
    let maxOne = m
    let maxTwo = n
    var index = 0
    var indexOne = 0
    var indexTwo = 0
    
    while index < totalSize {
        var nums1Iter = indexOne >= maxOne
        var nums2Iter = indexTwo >= maxTwo
        if !nums1Iter && (nums2Iter || nums1[indexOne] < nums2[indexTwo]) {
            output[index] = nums1[indexOne]
            indexOne += 1
        } else {
            output[index] = nums2[indexTwo]
            indexTwo += 1
        }
        index += 1
    }
    
    nums1 = output
}

print(arr1)
merge(&arr1, 3, arr2, 3)
print(arr1)

//: [Next](@next)
