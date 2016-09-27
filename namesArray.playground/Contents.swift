//: Playground - noun: a place where people can play

import UIKit

func commonName(array: [String]) -> String {
    var names = [String: Int]()
    
    for name in array {
        if let count = names[name] {
            names[name] = count + 1
        } else {
            names[name] = 1
        }
    }
    
    var mostCommon = ""
    
    for key in names.keys {
        if mostCommon == "" {
            mostCommon = key
        } else {
            let count = names[key]
            if count! > names[mostCommon]! {
                mostCommon = key
            }
        }
    }
    
    return mostCommon
}

commonName(array: ["alex" ,"marc", "bob", "sally", "jean", "bob"])
