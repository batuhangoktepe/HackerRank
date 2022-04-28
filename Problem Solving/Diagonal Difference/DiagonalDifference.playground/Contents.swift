import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var firstDiagonal: [Int] = []
    var secondDiagonal: [Int] = []
    
    for matrixIndex in 0..<arr.count {
        firstDiagonal.append(arr[matrixIndex][matrixIndex])
        secondDiagonal.append(arr[matrixIndex].reversed()[matrixIndex])
    }
        
    var matrixDifference: Int = 0
    let firstSum = firstDiagonal.reduce(0, +)
    let secondSum = secondDiagonal.reduce(0, +)
    if firstSum > secondSum {
        matrixDifference = firstSum - secondSum
        return matrixDifference
    } else {
        matrixDifference = secondSum - firstSum
        return matrixDifference
    }
}
