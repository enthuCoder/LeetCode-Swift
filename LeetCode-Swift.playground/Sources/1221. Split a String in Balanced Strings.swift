import Foundation

class Solution_1221 {
    func balancedStringSplit(_ s: String) -> Int {
        var balanceFactor = 0
        var tempString = ""
        var result = 0

        for char in s {
            if char == "R" {
                balanceFactor = balanceFactor + 1
            } else if char == "L" {
                balanceFactor = balanceFactor - 1
            }
            tempString = tempString + String(char)
            if balanceFactor == 0 {
                result = result + 1
            }
        }
        return result
    }
}

public class Input_1221 {
    public let input1 = "RLRRLLRLRL"
    public let input2 = "RLLLLRRRLR"
    public let input3 = "LLLLRRRR"
    public let input4 = "RLRRRLLRLL"
    
    public init() {}
    
    public func execute() {
        print("Input: \(input1) \n Output: \(Solution_1221().balancedStringSplit(input1))\n")
        print("Input: \(input2) \n Output: \(Solution_1221().balancedStringSplit(input2))\n")
        print("Input: \(input3) \n Output: \(Solution_1221().balancedStringSplit(input3))\n")
        print("Input: \(input4) \n Output: \(Solution_1221().balancedStringSplit(input4))\n")

    }
}
