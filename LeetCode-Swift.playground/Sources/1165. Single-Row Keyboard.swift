import Foundation

class Solution_1165 {
    func calculateTime(_ keyboard: String, _ word: String) -> Int {
        guard !keyboard.isEmpty, !word.isEmpty else {
            return 0
        }
        
        var result = 0
        var prevPosition = 0
        let input = Array.init(keyboard)
        
        for currChar in word  {
            if let newIndex = input.firstIndex(of: currChar) {
                result += abs(newIndex - prevPosition)
                prevPosition = newIndex
            }
        }
        return result
    }
}

public class Input_1165 {
    public let keyboard1 = "abcdefghijklmnopqrstuvwxyz"
    public let word1 = "cba"
    
    public let keyboard2 = "pqrstuvwxyzabcdefghijklmno"
    public let word2 = "leetcode"
    public init() {}
    public func execute() {
        print("Input: \(keyboard1) - \(word1) \n Output: \(Solution_1165().calculateTime(keyboard1, word1))\n")
        
        print("Input: \(keyboard2) - \(word2) \n Output: \(Solution_1165().calculateTime(keyboard2, word2))\n")
    }
}
