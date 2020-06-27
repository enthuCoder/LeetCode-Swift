
import Foundation

/**
 * Definition for a Node.
 */
public class Node_429 {
    public var val: Int
    public var children: [Node_429]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}


class Solution_429 {
    func levelOrder(_ root: Node_429?) -> [[Int]] {
        guard let currNode = root else {
            return [[Int]]()
        }
        var queueStorage = [Node_429]()
        var result = [[Int]]()
        queueStorage.append(currNode)
        while !queueStorage.isEmpty {
            
            var rowArray = [Int]()
            for _ in 0..<queueStorage.count {
                let dequeueNode = queueStorage.removeFirst()
                rowArray.append(dequeueNode.val)
                
                for childNode in dequeueNode.children {
                    queueStorage.append(childNode)
                }
            }
            result.append(rowArray)
        }
        return result
    }
}
