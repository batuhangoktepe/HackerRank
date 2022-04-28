import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var maximumArr = arr
    if let currentIndex = arr.firstIndex(where: { $0 == maximumArr.min() }) {
        maximumArr.remove(at: currentIndex)
    }
    
    var minimumArr = arr
    if let currentIndex = arr.firstIndex(where: { $0 == minimumArr.max() }) {
        minimumArr.remove(at: currentIndex)
    }
    
    _ = minimumArr.reduce(0, +)
    _ = maximumArr.reduce(0, +)
}

miniMaxSum(arr: [1,3,5,7,9])
