import Foundation

public class Solution_1119 {
    func removeVowels(_ S: String) -> String {
        var result = S
        let vowelSet: Array<Character> = ["a", "e", "i", "o", "u"]
        result.removeAll(where: { vowelSet.contains($0) })
        return result
    }
}

public class Input_1119 {
    public let input1 = "leetcodeisacommunityforcoders"
    public let input2 = "aeiou"
    public init() {}
    public func execute() {
        print("Input: \(input1) \n Output: \(Solution_1119().removeVowels(input1))\n")
        
        print("Input: \(input2) \n Output: \(Solution_1119().removeVowels(input2))\n")
    }
}
