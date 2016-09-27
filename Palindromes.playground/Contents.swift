//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(text: String?) -> Bool {
    if let text = text {
        // trim caracter and lowercased it
        let mutableText = text.trimmingCharacters(in: NSCharacterSet.whitespaces).lowercased()
        
        // Int type inference
        let length = mutableText.characters.count
        
        if length == 0 || length == 1 {
            return true
        } else if mutableText[mutableText.startIndex] == mutableText[mutableText.index(mutableText.endIndex, offsetBy: -1)] {
            let range = Range<String.Index>(mutableText.index(mutableText.startIndex, offsetBy: 1)..<mutableText.index(mutableText.endIndex, offsetBy: -1))
            return isPalindrome(text: mutableText.substring(with: range))
        }
    }
    
    return false
}


isPalindrome(text: "toto")

isPalindrome(text: "lol")
