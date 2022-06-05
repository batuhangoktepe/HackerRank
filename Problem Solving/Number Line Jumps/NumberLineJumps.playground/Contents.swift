import UIKit

/*
 * Complete the 'kangaroo' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER x1
 *  2. INTEGER v1
 *  3. INTEGER x2
 *  4. INTEGER v2
 */

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {

    var kangarooX1 = x1
    var kangarooX2 = x2
    var sameLocation: Bool = false
    
    
    let jumpCount = x1 + x2
    for _ in 0...jumpCount {
        if kangarooX1 == kangarooX2 {
            sameLocation = true
        }
        kangarooX1 += v1
        kangarooX2 += v2
    }
    
    return sameLocation ? "YES" : "NO"
}
