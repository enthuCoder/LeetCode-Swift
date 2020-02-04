import Foundation

class Solution_155 {
    /**
    * Your MinStack object will be instantiated and called as such:
    * let obj = MinStack()
    * obj.push(x)
    * obj.pop()
    * let ret_3: Int = obj.top()
    * let ret_4: Int = obj.getMin()
    */
    struct Element {
        let val: Int
        let min: Int
    }

    private var storage = [Element]()
    
    /** initialize your data structure here. */
    init() {
    }

    func push(_ x: Int) {
        let minimum = getMin()
        if minimum < x {
            storage.append(Element(val: x, min: minimum))
        } else {
            storage.append(Element(val: x, min: x))
        }
    }
    
    func pop() {
        if let _ = storage.last {
            storage.removeLast()
        }
    }
    
    func top() -> Int {
        if let last = storage.last {
           return last.val
        } else {
           return 0
        }
    }
    
    func getMin() -> Int {
        if let minimum = storage.last {
            return minimum.min
        } else {
            return Int.max
        }
    }
}

public class Input_155 {

    public init() {}
    public func execute() {
        let minStack: Solution_155 = Solution_155()
        minStack.push(-2)
        minStack.push(0)
        minStack.push(-3)
        print("Min: \(minStack.getMin())")
        minStack.pop()
        print("Top: \(minStack.top())")
        print("Min: \(minStack.getMin())")

//        print("Input: \(input1) \n Output: \(Solution_155().isPalindrome(input1))\n")
//
//        print("Input: \(input2) \n Output: \(Solution_155().isPalindrome(input2))\n")
    }
}
