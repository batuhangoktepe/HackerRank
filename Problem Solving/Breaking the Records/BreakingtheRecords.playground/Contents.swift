import Foundation

// Maria plays college basketball and wants to go pro. Each season she maintains a record of her play. She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.

func breakingRecords(scores: [Int]) -> [Int] {
    // Write your code here
    var bestScore: Int = 0
    var lowestScore: Int = 0
    var bestScoreArray: [Int] = []
    var lowestScoreArray: [Int] = []

    
    for i in 0..<scores.count {
        if let newArrayMax = bestScoreArray.max() {
            if newArrayMax < scores[i] {
                bestScore += 1
            }
        }
                
        bestScoreArray.append(scores[i])
    }

    for i in 0..<scores.reversed().count {
        if let newArrayMax = lowestScoreArray.min() {
            if newArrayMax > scores[i] {
                lowestScore += 1
            }
        }
                
        lowestScoreArray.append(scores[i])
    }
    
    return [bestScore, lowestScore]
}

breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
