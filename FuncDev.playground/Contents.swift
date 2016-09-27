//: Playground - noun: a place where people can play

import UIKit

func fib(n: Int) -> Int {
    if n <= 1 {
        return n
    }
    return (fib(n: n - 1) + fib(n: n - 2))
}

print(fib(n: 10))
