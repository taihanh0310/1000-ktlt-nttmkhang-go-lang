//
//  main.swift
//  SwitfTour
//
//  Created by Hanh Nguyen on 4/30/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import Foundation

print("Switf: Switch case")

let vegetable = "red pepper"

switch vegetable {
case "celery" :
    print("Add some raisins and make ants on a log.")
case "cucuber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}


print("===============FOR-IN================")
let interetingNumbers = [
    "Primes" : [2,3,5,7,11,13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1,4,9,16, 25],
]

var largest = 0
for (kind, numbers) in interetingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print("So lon nhat la: \(largest)")

print("=============WHILE=================")

var n = 2
while n < 100 {
    n *= 2
}

print("So lon nhat la: \(n)")

var m = 2
repeat {
    m *= 2
} while m < 100

print("So lon nhat lieu thuc hien roi moi dem : \(m)")


print("==========FUNCTION=================")
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}

print(greet(person: "Hanh Nguyen", day: "10"))

/*
 * Rerurn 3 value
*/
func calculateStatistic(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[1]
    var sum = 0
    
    for score in scores {
        if(score > max){
            max = score
        }
        else if (score < min) {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistic(scores: [5,3,100,2,9,10,12])

print("So nho nhat: \(statistics.min)")
print("So lon nhat: \(statistics.max)")
print("Tong so min - max: \(statistics.sum)")

print("Ham trong Ham")
func returnFifteen(value: Int) -> Int {
    var y = 10
    
    func add(){
        y += value
    }
    
    add()
    return y
}

print("Gia tri cua ham long trong ham la: \(returnFifteen(value: 100))")

print("Function long nhau va trong function co param")

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}

func letThanTen(number: Int) -> Bool {
    return number < 10
}

 var testNumber = [1,2,3,4,5,10,11]
hasAnyMatches(list: testNumber, condition: letThanTen)

