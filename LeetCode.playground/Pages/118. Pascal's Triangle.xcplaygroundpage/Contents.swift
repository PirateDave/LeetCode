//: [Previous](@previous)

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    var ansArr: [[Int]] = [[1]]
    
    guard numRows > 1 else {
        return ansArr
    }
    
    for rowIndex in 1..<numRows {
        var curRow: [Int] = []
        let prevRow = ansArr[rowIndex - 1]
        curRow.append(1)
        for column in 1..<prevRow.count {
            curRow.append(prevRow[column - 1] + prevRow[column])
        }
        curRow.append(1)
        ansArr.append(curRow)
    }
    
    return ansArr
}

print(generate(1))
print(generate(5))
print(generate(10))
//: [Next](@next)
