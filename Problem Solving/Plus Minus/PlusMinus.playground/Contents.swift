import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    var positiveCount = 0
    var negativeCount = 0
    var zeroCount = 0
    
    arr.forEach { currentItem in
        if currentItem == 0 {
            zeroCount += 1
        } else if currentItem > 0 {
            positiveCount += 1
        } else if currentItem < 0 {
            negativeCount += 1
        }
    }
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
