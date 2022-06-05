import Foundation

/*
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    var matchValue = 0
    
    for i in 0..<s.count {
        var ints: [Int] = [s[i]]
        for currentM in 0..<m - 1 {
            let currentValue = i + currentM + 1
            if currentValue < s.count {
                ints += [s[currentValue]]
            }
        }
       
        if (ints.reduce(0, +) == d) {
            matchValue += 1
        }
    }
    
    return matchValue
}

birthday(s: [1,2,1,3,2], d: 3, m: 2)
