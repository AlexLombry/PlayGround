//: Playground - noun: a place where people can play

import UIKit

var salaries: [Int] = [
    20000,
    30000,
    100000,
    65900,
    76320
]

print(salaries.count)

salaries.append(98765)
print(salaries.count)

salaries.remove(at: 3)
print(salaries.count)

salaries.remove(at: salaries.count - 1)
print(salaries.count)

var students = [String]()
print(students.count)

students.append("alex")
students.append("marc")
print(students.count)

// loops for array
// brut to net : salaire * 0.77

// init array
var salaires: [Double] = [
    20000,
    30000,
    100000,
    65900,
    76320
]

print(salaires)

// while
var x = 0
repeat {
    salaires[x] = salaires[x] * 0.77
    x += 1
} while (x < salaires.count)
print(salaires)

// for i
for i in 0..<salaires.count {
    salaires[i] = salaires[i] / 0.77
}
print(salaires)

// foreach
for salary in salaries {
    print(salary)
}

// Dictionary
var nameOfIntegers = [Int: String]()
nameOfIntegers[0] = "Zero"
print(nameOfIntegers)

nameOfIntegers = [:]
print(nameOfIntegers)


var airports: [String: String] = [
    "CDG": "Charles de Gaulle Paris",
    "LAX": "Los Angeles International",
    "THA": "Toulon - Hyères Aéroport"
]

if airports.isEmpty {
    print("Empty airports lists")
} else {
    print("Airport has \(airports.count) items in it")
}

print(airports.isEmpty ? "Empty airports lists" : "Airport has \(airports.count) items in it")

airports["CDG"] = "Toto"
print(airports)

if let _ = airports["CDG"] {
    print(airports)
} else {
    print("nothing")
}

if let val = airports["CDG"] {
    print(val + "toto")
}

// for in loop, like foreach as k => v
for (code, name) in airports {
    print("The code \(code) is for the airport \(name)")
}

for k in airports.keys {
    print(k)
}

for v in airports.values {
    print(v)
}

// this
var odd = [Int]()
for n in 0..<100 {
    if n % 2 == 1 {
        odd.append(n)
    }
}
print(odd)

// use flat map for conditional return
// or this
let odd1 = (0..<100).flatMap { (i) -> Int? in
    return (i % 2 == 1) ? i : nil
}
print(odd1)

// and this
let odd2 = (0..<100).flatMap { ($0 % 2 == 1) ? $0 : nil }
print(odd2)

let al = (0..<100).flatMap { (i) -> Int? in
    return i % 2 == 1 ? i : nil
}
print(al)

var val1:Int? = 1

if let val1 = val1 {
    print("yes")
}




