import Foundation

/**
 * Definition for a binary tree node.
 */
public class TreeNode_113 {
    public var val: Int
    public var left: TreeNode_113?
    public var right: TreeNode_113?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution_113 {
    func pathSum(_ root: TreeNode_113?, _ sum: Int) -> [[Int]] {
        // Array of all the result paths
        var paths = [[Int]]()
        
        // Array to store nodes of current running path
        var path = [Int]()
        
        hasPaths_helper(root, sum, result: &paths, path: &path)
        
        print(paths)
        return paths
    }

    func isLeaf(_ root: TreeNode_113) -> Bool {
        return (root.left == nil) && (root.right == nil)
    }

    func hasPaths_helper(_ root: TreeNode_113?, _ sum: Int, result: inout [[Int]], path: inout [Int]) {
        guard let root = root else {
            return
        }
        path.append(root.val)
        if isLeaf(root) && root.val == sum {
            result.append(path)
        } else {
            hasPaths_helper(root.left, sum - root.val, result: &result, path: &path)
            hasPaths_helper(root.right, sum - root.val, result: &result, path: &path)
        }
        path.removeLast()
    }
}
