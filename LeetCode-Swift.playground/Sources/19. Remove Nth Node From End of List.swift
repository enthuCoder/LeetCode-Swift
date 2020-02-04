import Foundation

public class ListNode_19 {
    public var val: Int
    public var next: ListNode_19?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution_19 {
    func removeNthFromEnd(_ head: ListNode_19?, _ n: Int) -> ListNode_19? {
        guard let newhead = head else {
            return nil
        }
        var pointer1 = newhead
        var pointer2 = newhead
        var curr = head
        var position = 1
        
        while curr?.next != nil {
            position += 1
            if position > n {
                //pointer1 = pointer1?.next
            }
            curr = curr?.next
        }
        //pointer1 = pointer1.next?.next
        return head
    }
}

//public class Input_19 {
//    public let input1 = "A man, a plan, a canal: Panama"
//    public let input2 = "race a car"
//      1->2->3->4->5
//      1->2->3->5
//    public init() {}
//    public func execute() {
//
//    }
//}
