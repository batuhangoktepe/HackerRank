import Foundation

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func staircase(n: Int) -> Void {
    // Write your code here
    var currentNStringArray: [String] = []
    for i in 0..<n {
        currentNStringArray.append("\(returnNForCount(nCount: n - i))")
    }
    
    var revr: [String] = currentNStringArray.reversed()

    for rIndex in 0..<revr.count {
        revr[rIndex] = addSpaceToStart(current: revr[rIndex], paceCount: (revr.count - rIndex) - 1)
    }
    
    revr.forEach { currentR in
        print(currentR)
    }
}

func returnNForCount(nCount: Int) -> String {
    var currentString = ""
    
    for _ in 0..<nCount {
        currentString += "#"
    }
    
    return "\(currentString)"
}

func addSpaceToStart(current: String, paceCount: Int) -> String {
    var currentString = current
    
    for _ in 0..<paceCount {
        currentString.insert(" ", at: currentString.startIndex)
    }
    
    return "\(currentString)"
}

staircase(n: 4)
