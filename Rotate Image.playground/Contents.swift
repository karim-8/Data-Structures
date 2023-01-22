import UIKit


/// Rotate image
/// Matrix
///


/// 1,2,3
/// 4,5,6
/// 7,8,9

/// 1,4,7
/// 2,5,8
/// 3,6,9

///
///
/// 7,4,1
/// 8,5,2
/// 9,6,3
///
///

func rotate(_ matrix: inout [[Int]]) {
    if matrix.isEmpty {return}
    
    let len = matrix.count
    // change from column to row
    for i in 0..<len {
        for n in i..<len {
            let tmp = matrix[i][n]
            matrix[i][n] = matrix[n][i]
            matrix[n][i] = tmp
        }
        /// For swapping elements

        for n in 0..<(len / 2) {
            let tmp = matrix[i][n], l = len
            matrix[i][n] = matrix[i][l - 1 - n]
            matrix[i][l - 1 - n] = tmp
        }
    }
            
}
