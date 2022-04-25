import Foundation

/*
 * Complete the 'aVeryBigSum' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts LONG_INTEGER_ARRAY ar as parameter.
 */


func aVeryBigSum(ar: [Int]) -> Int {
    let sum = ar.reduce(0, +)
    return sum
}
