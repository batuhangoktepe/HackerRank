import Foundation

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */


func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aScore: Int = 0
    var bScore: Int = 0
    
    for i in 0..<a.count {
        if a[i] > b[i] {
            aScore += 1
        } else if a[i] < b[i] {
            bScore += 1
        }
    }
    
    return [aScore, bScore]
}
