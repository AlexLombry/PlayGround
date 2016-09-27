//: Playground - noun: a place where people can play

import UIKit

func fibForNimSteps(numSteps: Int) -> [Int] {
    
    var sequence = [0, 1]
    
    if numSteps <= 1 {
        return sequence
    }
    
    for _ in 0...numSteps {
        sequence.append(
            sequence[sequence.count - 2] + sequence.last!
        )
    }
    
    return sequence
}

fibForNimSteps(numSteps: 6)

func fibRecursion(numSteps: Int, first: Int, second: Int) -> [Int] {
    
    if numSteps == 0 {
        return []
    }
    
    let cal = first + second
    
    return [cal] + fibRecursion(
        numSteps: numSteps - 1,
        first: second, second:
        first + second
    )

}

[0, 1] + fibRecursion(numSteps: 6, first: 0, second: 1)
