import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_1302 {
    public var val: Int
    public var left: TreeNode_1302?
    public var right: TreeNode_1302?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode_1302?, _ right: TreeNode_1302?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution_1302 {
    func deepestLeavesSum(_ root: TreeNode_1302?) -> Int {
        guard let currNode = root else {
            return 0
        }
        var queueStorage = [TreeNode_1302]()
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
        
        let resultArr = result.last!
        
        return resultArr.reduce(0, +)
    }
}
