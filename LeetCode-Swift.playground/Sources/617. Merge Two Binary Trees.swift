import Foundation


public class TreeNode_617 {
    public var val: Int
    public var left: TreeNode_617?
    public var right: TreeNode_617?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_617 {
    
    func mergeTrees(_ t1: TreeNode_617?, _ t2: TreeNode_617?) -> TreeNode_617? {
        if t1 == nil {
            return t2
        }
        if t2 == nil {
            return t1
        }
        t1!.val =  t1!.val + t2!.val
        
        t1?.left = mergeTrees(t1!.left, t2!.left)
        t1?.right = mergeTrees(t1!.right, t2!.right)
        
        return t1
    }
}


public class Input_617 {
    public let input1 = "aba"
    public let input2 = "abcaaca"
    
    public init() {}
    public func execute() {
        
//        print("Input: \(input1) \n Output: \(Solution_617().mergeTrees(input1))\n")
//        print("Input: \(input2) \n Output: \(Solution_617().mergeTrees(input2))\n")
    }
}
