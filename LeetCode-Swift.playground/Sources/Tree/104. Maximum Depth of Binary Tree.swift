import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_104 {
    public var val: Int
    public var left: TreeNode_104?
    public var right: TreeNode_104?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
 }

class Solution_104 {
    // Max Depth Iterative
    func maxDepth(_ node: TreeNode_104?) -> Int {
        var result = 0
        guard let node = node else {
            return result
        }
        
        maxDepth_Iterative(node, depth: 1, result: &result)
        
        return result
    }
    
    func maxDepth_Iterative(_ node: TreeNode_104?, depth: Int, result: inout Int) {
        guard let root = node else {
            return
        }
        
        if root.right == nil && root.left == nil {
            result = max(result, depth)
        }
        maxDepth_Iterative(root.left, depth: depth + 1, result: &result)
        maxDepth_Iterative(root.right, depth: depth + 1, result: &result)
    }
    
}
