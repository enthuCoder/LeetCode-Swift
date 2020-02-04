import Foundation

public class TreeNode_226 {
    public var val: Int
    public var left: TreeNode_226?
    public var right: TreeNode_226?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_226 {
    
    init() { }
    // This can be done using level order traversal
    @discardableResult
    func invertTree(_ root: TreeNode_226?) -> TreeNode_226? {
        guard let node = root else {
            return nil
        }
        let temp = node.left
        node.left = node.right
        node.right = temp
        
        invertTree(node.right)
        invertTree(node.left)
        
        return node
        
    }
    
}

public class Input_226 {
    public let input1 = "A man, a plan, a canal: Panama"
    public let input2 = "race a car"
    
    public init() {}
    public func execute() {
        
    }
}
