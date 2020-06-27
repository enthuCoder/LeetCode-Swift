import Foundation

public class TreeNode_98 {
    public var val: Int
    public var left: TreeNode_98?
    public var right: TreeNode_98?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_98 {
    
    init() { }
    @discardableResult
    func isValidBST(_ root: TreeNode?) -> Bool {
        let isBST: Bool = isBinarySearchTree(withRootNode: root, min: Int.min, max: Int.max)
        return isBST

    }
    
    func isBinarySearchTree(withRootNode node: TreeNode?, min: Int, max: Int) -> Bool {
        if node == nil {
            return true
        }
        if node!.val < min || node!.val > max || node!.val == min || node!.val == max {
            return false
        }
        return isBinarySearchTree(withRootNode: node!.left, min: min, max: node!.val) && isBinarySearchTree(withRootNode: node!.right, min: node!.val, max: max)
    }


}

public class Input_98 {
    public let input1 = ""
    
    public init() {}
    public func execute() {
        //print(" \(Solution_98().isValidBST(<#T##root: TreeNode?##TreeNode?#>))")
    }

}
