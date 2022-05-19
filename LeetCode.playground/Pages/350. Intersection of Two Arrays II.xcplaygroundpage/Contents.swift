//: [Previous](@previous)

import Foundation

let arr1 = [1, 2]
let arr2 = [1, 1]

//let arr1 = [4,9,5]
//let arr2 = [9,4,9,8,4]

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

    guard nums1 != nums2 else {
        return nums1
    }
    
    guard nums1.count >= nums2.count else {
        return intersect(nums2, nums1)
    }
    
    var ans = [Int]()
    let set = nums1.map{ ($0, 1) }
    print(set)
    var counts = Dictionary(set, uniquingKeysWith: +)
    print(counts)
    
    for i in 0..<nums2.count {
        if let num = counts[nums2[i]],
           num > 0 {
            counts[nums2[i]]! -= 1
            ans.append(nums2[i])
        }
    }
    
    return ans
}


print(intersect(arr1, arr2))
//: [Next](@next)
