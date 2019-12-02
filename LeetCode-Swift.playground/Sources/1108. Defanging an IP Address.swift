import Foundation

class Solution_1108 {
    func defangIPaddr(_ address: String) -> String {
        
        var result: String = ""
        
        for currChar in address {
            if currChar == "." {
                result = result + "[.]"
            } else {
                result = result + String(currChar)
            }
        }
        return result
    }
}

public class Input_1108 {
    public let input1 = "1.1.1.1"
    public let input2 = "255.100.50.0"
    public init() {}
    public func execute() {
        print("Input: \(input1) \n Output: \(Solution_1108().defangIPaddr(input1))\n")
        
        print("Input: \(input2) \n Output: \(Solution_1108().defangIPaddr(input2))\n")
    }
}
