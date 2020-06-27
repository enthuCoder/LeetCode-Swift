import Foundation

public class TreeNode_101 {
    public var val: Int
    public var left: TreeNode_101?
    public var right: TreeNode_101?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_101 {
    func isSymmetric(_ root: TreeNode_101?) -> Bool {
        guard let node = root else {
            return true
        }
        return areSubtreesSymmetric(node.left, node.right)
    }
    
    func areSubtreesSymmetric(_ leftTreeNode: TreeNode_101?, _ rightTreeNode: TreeNode_101?) -> Bool {
        if leftTreeNode != nil && rightTreeNode != nil && leftTreeNode!.val == rightTreeNode!.val {
            return areSubtreesSymmetric(leftTreeNode!.left, rightTreeNode!.right) &&                                      areSubtreesSymmetric(leftTreeNode!.right, rightTreeNode!.left)
        } else if leftTreeNode == nil && rightTreeNode == nil {
            return true
        } else {
            return false
        }
    }
}
