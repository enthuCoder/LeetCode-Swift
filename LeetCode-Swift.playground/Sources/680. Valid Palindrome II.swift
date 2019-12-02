import Foundation

class Solution_680 {
    func isPalindrome(_ s: String, start: Int, end: Int) -> Bool {
        if start == end {
            return true
        }
        let inputArr = Array(Array(s)[start...end])
        // Check if remaining string is a pallindrome
        for (index, val) in inputArr.enumerated() where index < inputArr.count/2 {
            let endIndex = inputArr.count - index - 1
            if val != inputArr[endIndex] {
                return false
            }
        }
        return true
    }
    

    func validPalindrome(_ s: String) -> Bool {
            let str = Array.init(s)
            
            for (index, val) in str.enumerated() where index < str.count/2  {
                let endIndex = str.count - index - 1
                if val != str[endIndex] {
                    return isPalindrome(s, start: index + 1 , end:endIndex) || isPalindrome(s, start: index, end:endIndex - 1)
                }
            }
            return true
    }
}

public class Input_680 {
    public let input1 = "aba"
    public let input2 = "abcaaca"

    public init() {}
    public func execute() {
        
        print("Input: \(input1) \n Output: \(Solution_680().validPalindrome(input1))\n")
        print("Input: \(input2) \n Output: \(Solution_680().validPalindrome(input2))\n")
    }
}
