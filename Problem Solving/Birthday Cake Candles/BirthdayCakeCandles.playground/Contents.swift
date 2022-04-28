import Foundation

/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

func birthdayCakeCandles(candles: [Int]) -> Int {

    let maxNumber = candles.max()
    var totalMaxNumber = 0
    
    candles.forEach { candle in
        if candle == maxNumber ?? 0 {
            totalMaxNumber += 1
        }
    }
    
    return totalMaxNumber
}
