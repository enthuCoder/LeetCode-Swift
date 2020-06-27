import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_111 {
    public var val: Int
    public var left: TreeNode_111?
    public var right: TreeNode_111?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
 
class Solution_111 {
    func minDepth(_ root: TreeNode_111?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil {
            return minDepth(root?.right) + 1
        }
        if root?.right == nil {
            return minDepth(root?.left) + 1
        }
        return min(minDepth(root?.left), minDepth(root?.right)) + 1
    }
}
