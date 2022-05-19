//: [Previous](@previous)

import Foundation

let arr = [[1,2],[3,4]]
let arr2 = [[1,2],[3,4],[5,6],[7,8]]

let r1 = 1, c = 4, r2 = 2

func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    let flatArr = mat.flatMap{ $0 }
    var ansArr: [[Int]] = []
    
    guard flatArr.count == (r * c) else {
        print("first guard: \(flatArr.count)")
        return mat
    }
    
    guard r > 1  else {
        print("second guard")
        ansArr.append(flatArr)
        return ansArr
    }
    
    var column = 0
    for _ in 0..<r {
        var row: [Int] = []
        for j in column..<column + c {
            row.append(flatArr[j])
        }
        
        ansArr.append(row)
        column += c
    }
    
    return ansArr
    
}


print(matrixReshape(arr, r1, c))
print(matrixReshape(arr, r2, c))
print(matrixReshape(arr2, r2, c))

//: [Next](@next)
