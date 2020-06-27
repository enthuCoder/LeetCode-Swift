import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_129 {
    public var val: Int
    public var left: TreeNode_129?
    public var right: TreeNode_129?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode_129?, _ right: TreeNode_129?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution_129 {
    
    func sumNumbers(_ root: TreeNode_129?) -> Int {
        var result = [Int]()
        var currNum: Int = 0
        
        sumNumbersHelper(root, &result, &currNum)
        return result.reduce(0, +)
    }
    
    func isLeaf(_ root: TreeNode_129) -> Bool {
        return (root.left == nil) && (root.right == nil)
    }
    
    func sumNumbersHelper(_ root: TreeNode_129?, _ result: inout [Int], _ currNum: inout Int) {
        guard let root = root else {
            return
        }
        
        if currNum == 0 {
            currNum = root.val
        } else {
            currNum = currNum * 10 + root.val
        }
        
        if isLeaf(root) {
            result.append(currNum)
        } else {
            sumNumbersHelper(root.left, &result, &currNum)
            sumNumbersHelper(root.right, &result, &currNum)
        }
        currNum = (currNum - root.val) / 10
    }
    
}
