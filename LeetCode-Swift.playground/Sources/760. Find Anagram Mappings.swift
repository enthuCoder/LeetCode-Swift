import Foundation

class Solution_760 {
    func anagramMappings(_ A: [Int], _ B: [Int]) -> [Int] {
        var result = [Int]()
        var dictB = [Int: Int]()
        for (index, val) in B.enumerated() {
            dictB[val] = index
        }

        for currVal in A {
            result.append(dictB[currVal]!)
        }
        
        return result
    }
}

public class Input_760 {
    public let A = [12, 28, 46, 32, 50]
    public let B = [50, 12, 32, 46, 28]
    
    public init() {}
    
    public func execute() {
        print("Input: \(A) \(B) \n Output: \(Solution_760().anagramMappings(A, B))\n")
    }
}
