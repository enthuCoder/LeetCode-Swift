import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_100 {
    public var val: Int
    public var left: TreeNode_100?
    public var right: TreeNode_100?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
  }
}

class Solution_100 {
    func isSameTree(_ p: TreeNode_100?, _ q: TreeNode_100?) -> Bool {
        
        if (p == nil && q == nil){
            return true
        }
        if p == nil || q == nil {
            return false
        }
        if p!.val != q!.val {
            return false
        }
        return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
    }
}

public class Input_100 {
    public let input1 = ""
    
    public init() {}
    public func execute() {
        //print(" \(Solution_100().isSameTree())")
    }

}
