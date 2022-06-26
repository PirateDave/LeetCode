/*
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.
 
 Example 1:

 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 
 */

import Foundation

var arr1 = [1, 2, 3, 4]
var arr2 = [1, 1, 1, 1, 1]
var arr3 = [3, 1, 2, 10, 1]
var arr4 = [3, -1, 2, -10, 1]

//func runningSum(_ nums: inout [Int]) -> [Int] {
//
//    for i in 1..<nums.count {
//        nums[i] = (nums[i - 1] + nums[i])
//    }
//
//    return nums
//}

/// Need to change function a bit since LeetCode did not accept an inout var for the array
func runningSum(_ nums: [Int]) -> [Int] {
    var ans = nums
    for i in 1..<ans.count {
        ans[i] = (ans[i - 1] + ans[i])
    }
    
    return ans
}

print(runningSum(arr1))
print(runningSum(arr2))
print(runningSum(arr3))
print(runningSum(arr4))

//: [Next](@next)
