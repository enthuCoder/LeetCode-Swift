import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_107 {
    public var val: Int
    public var left: TreeNode_107?
    public var right: TreeNode_107?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_107 {
    func levelOrderBottom(_ root: TreeNode_107?) -> [[Int]] {
        guard let currNode = root else {
            return [[Int]]()
        }
        var queueStorage = [TreeNode_107]()
        var result = [[Int]]()
        queueStorage.append(currNode)
        while !queueStorage.isEmpty {
            
            var rowArray = [Int]()
            for _ in 0..<queueStorage.count {
                let dequeueNode = queueStorage.removeFirst()
                rowArray.append(dequeueNode.val)
                if let left = dequeueNode.left {
                    queueStorage.append(left)
                }
                if let right = dequeueNode.right {
                    queueStorage.append(right)
                }
            }
            result.append(rowArray)
        }
        return result.reversed()
    }
}
