import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_112 {
    public var val: Int
    public var left: TreeNode_112?
    public var right: TreeNode_112?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_112 {
    func hasPathSum(_ root: TreeNode_112?, _ sum: Int) -> Bool {
        guard let node = root else {
            return false
        }
        
        if isLeaf(node) && node.val == sum {
            return true
        } else {
            return hasPathSum(node.left, sum - node.val) || hasPathSum(node.right, sum - node.val)
        }
    }
    
    func isLeaf(_ root: TreeNode_112) -> Bool {
        return (root.left == nil) && (root.right == nil)
    }
}
