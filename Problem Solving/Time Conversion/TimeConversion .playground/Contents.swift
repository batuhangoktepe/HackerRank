import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    // Write your code here
    let dateAsString = s
    let df = DateFormatter()
    df.dateFormat = "hh:mm:ssa"
    
    let date = df.date(from: dateAsString)
    df.dateFormat = "HH:mm:ss"
    
    let time24 = df.string(from: date!)
    return time24
}
