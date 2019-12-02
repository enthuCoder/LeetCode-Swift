import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_938 {
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        var sumResult = 0
        inOrderTraversal(withRootNode: root, sum: &sumResult, lower: L, higher: R )
        print("Result: \(sumResult)")
        return sumResult
    }
    
    func inOrderTraversal(withRootNode node: TreeNode?, sum sumVal: inout Int, lower: Int, higher: Int) {
        guard let node = node else {
            return
        }
        self.inOrderTraversal(withRootNode: node.left, sum: &sumVal, lower: lower, higher: higher)
        if node.val>=lower && node.val<=higher {
            sumVal = sumVal + node.val
        }
        self.inOrderTraversal(withRootNode: node.right, sum: &sumVal, lower: lower, higher: higher)
    }

}

public class Input_938 {
    public let root1: [Int?] = [10,5,15,3,7,nil,18]
    public let L1 = 7
    public let R1 = 15
    public let root2: [Int?] = [10,5,15,3,7,13,18,1,nil,6]
    public let L2 = 6
    public let R2 = 10
    
    public init() {}
    
    public func execute() {
//        print("Input1: \(root1) \(L1) \(R1) \n Output: \(Solution_938().rangeSumBST(root1, L1, R1))\n")
//        
//        print("Input2: \(root2) \(L2) \(R2) \n Output: \(Solution_938().rangeSumBST(root2, L2, R2))\n")
    }
}
