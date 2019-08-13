//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

var tmpCreate: Int = 20
tmpCreate = tmpCreate * 20
print("tmp create 1: ", tmpCreate)
tmpCreate = tmpCreate / 90
print("tmp create 2: ", tmpCreate)
tmpCreate = tmpCreate + 19

print(tmpCreate)

/////

var shoppingList = ["catfish", "water", "tulips"]
// lay phan tu dau tien trong array
print(shoppingList[0])
// add them phan tu vao array

shoppingList.append("phan tu moi")
print(shoppingList)

// create array kieu interger
let arrayInteger: [Int] = [1, 3, 5, 7, 9, 11, 13, 15]
print(arrayInteger)


// switch case if else conditions
var teamScore:Int = 0
for score in arrayInteger {
    if(score > 2){
        teamScore += 3
    }
    else{
        teamScore += 1
    }
}

print(teamScore)

// nil - xu ly null
var optionalString: String? = "Hello"
print(optionalString == nil)
var optinalName: String? = nil
var greeting = "Hello!"
if let name = optinalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "Hanh Nguyen"
let informationGreetting = "Hi \(nickName ?? fullName)"

// switch case
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on log.")
case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}

// array key value
let interestingNumbers = [
    "Prime": [2,3,5,7,11, 13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest{
            largest = number
        }
    }
}
print(largest)

// while loop
var n = 2
while n < 100 {
    n *= 2
}

print(n)

var m = 2
repeat {
    m*=2
}while m < 1000

print(m)

var total = 0
for i in 0..<400 {
    total += i
}
print(total)
