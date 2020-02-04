import Foundation

class Solution_917 {
    func reverseOnlyLetters(_ S: String) -> String {
        var tempArray = [String]()
        let ignoreChars = updatedIgnoreChars(S)
        for i in S where !ignoreChars.contains(String(i)) {
            tempArray.append(String(i))
        }
        var result = [String()]
        for i in S {
            if ignoreChars.contains(String(i)) {
                result.append(String(i))
            } else {
                result.append(tempArray.removeLast())
            }
        }
        var res = result.compactMap { $0 as? String }.joined()
        return res
    }
    
    func updatedIgnoreChars(_ input: String) -> Set<String> {
        
        var alphanumericString = Set<String>()
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

public class Input_917 {
    public let input1 = "ab-cd"
    public let input2 = "a-bC-dEf-ghIj"
    public let input3 = "Test1ng-Leet=code-Q!"

    public init() {}
    public func execute() {
        
        print("Input: \(input1) \n Output: \(Solution_917().reverseOnlyLetters(input1))\n")
        
        print("Input: \(input2) \n Output: \(Solution_917().reverseOnlyLetters(input2))\n")
        
        print("Input: \(input3) \n Output: \(Solution_917().reverseOnlyLetters(input3))\n")
    }
}
