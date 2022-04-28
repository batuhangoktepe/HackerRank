import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    let allGrades: [Int] = grades
    var newGrades: [Int] = []

    allGrades.forEach { grade in
        if grade <= 37 {
            newGrades.append(grade)
        } else {
            if grade.isMultiple(of: 5) {
                newGrades.append(grade)
            } else {
                if (grade + 1).isMultiple(of: 5) {
                    newGrades.append((grade + 1))
                } else if (grade + 2).isMultiple(of: 5) {
                    newGrades.append((grade + 2))
                } else {
                    newGrades.append(grade)
                }
            }
        }
    }
    
    return newGrades
}

gradingStudents(grades: [45,50,52,53,54])
