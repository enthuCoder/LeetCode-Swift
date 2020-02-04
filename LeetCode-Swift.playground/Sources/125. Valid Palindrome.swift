import Foundation

class Solution_125 {
    func isPalindrome(_ s: String) -> Bool {
        let ignoreChars = updatedIgnoreChars(s)
        var input = s
        // Remove non-alphanumeric characters
        for char in ignoreChars {
            input = input.replacingOccurrences(of: char, with: "")
        }
        
        //Change to lower case and convert to array
        input = input.lowercased()
        let inputArr = Array(input)
        let count = input.count
        var result = true
        
        // Check if remaining string is a pallindrome
        for (index, val) in input.enumerated() where index <= count/2 {
            let endIndex = count - index - 1
            if val != inputArr[endIndex] {
                result = false
                break
            }
        }
        
        return result
    }
    
    func updatedIgnoreChars(_ input: String) -> Set<String> {
        
        var alphanumericString = Set<String>()
        for i in 0...9 {
            alphanumericString.insert("\(i)")
        }
        var a: Unicode.Scalar = "a"
        var z: Unicode.Scalar = "z"
        for i in a.value...z.value {
            alphanumericString.insert("\(Unicode.Scalar(i)!)")
        }
        a = "A"
        z = "Z"
        for i in a.value...z.value {
            alphanumericString.insert("\(Unicode.Scalar(i)!)")
        }
        var inputSet: Set<String> = Set<String>()
        for i in input {
            inputSet.insert("\(i)")
        }
        inputSet.subtract(alphanumericString)
        return inputSet
    }
}

public class Input_125 {
    public let input1 = "A man, a plan, a canal: Panama"
    public let input2 = "race a car"

    public init() {}
    public func execute() {
        
        print("Input: \(input1) \n Output: \(Solution_125().isPalindrome(input1))\n")
        
        print("Input: \(input2) \n Output: \(Solution_125().isPalindrome(input2))\n")
    }
}
