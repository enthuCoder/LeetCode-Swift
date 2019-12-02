import Foundation

class Solution_771 {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var result = 0
        
        for currStone in S where J.contains(currStone) {
            result += 1
        }
        return result
    }
}

public class Input_771 {
    public let J1 = "aA"
    public let S1 = "aAAbbbb"
    public let J2 = "z"
    public let S2 = "ZZ"
    
    public init() {}
    public func execute() {
        print("Input: \(J1) \(S1) \n Output: \(Solution_771().numJewelsInStones(J1, S1))\n")
        
        print("Input: \(J2) \(S2) \n Output: \(Solution_771().numJewelsInStones(J2, S2))\n")
    }
}
