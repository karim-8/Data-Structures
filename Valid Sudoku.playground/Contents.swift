import UIKit

/// Check whtether the number has been checked before in the Box of the soduko
///
/// It shoild be a unique number in row and column

func isValidSudoku(_ board: [[Character]]) -> Bool {
    
    
    var seen = Set<String>()  // O(N)
    
    for i in 0..<board.count {   //O(N)
       
        for j in 0..<board[i].count { //O(N)
          ///  print("i is \(board[i]) --- J is \(board[j])")
            let currentCharacter = String(board[i][j])
            
            
            if currentCharacter != "." {
                
                let row = "\(currentCharacter) is seen at row \(i)"
                if !seen.contains(row) {
                    seen.insert(row)
                } else {
                    return false
                }
                
                
                
                let column = "\(currentCharacter) is seen at column \(j)"
                if !seen.contains(column) {
                    seen.insert(column)
                } else {
                    return false
                }
                
                
                
                let box = "\(currentCharacter) is seen at Box \(i/3) \(j/3)"
                if !seen.contains(box) {
                    seen.insert(box)
                } else {
                    return false
                }
            }
        }
    }
  ///  print(seen)
    return true
}

// Time Complexity --> O(N^2)
// Space Complexity --> O(N)


isValidSudoku(
    [["5","3",".",".","7",".",".",".","."]
    ,["6",".",".","1","9","5",".",".","."]
    ,[".","9","8",".",".",".",".","6","."]
    ,["8",".",".",".","6",".",".",".","3"]
    ,["4",".",".","8",".","3",".",".","1"]
    ,["7",".",".",".","2",".",".",".","6"]
    ,[".","6",".",".",".",".","2","8","."]
    ,[".",".",".","4","1","9",".",".","5"]
    ,[".",".",".",".","8",".",".","7","9"]]
)


///  1,2,3
///  4,5,6
///  7,8,9
