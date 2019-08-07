import UIKit

var str = "Hello, playground"

var num = 1, num2 = 2, num3 = 3

var numf = 3.8, numf2 = 2.8

print(numf - numf2)

var x = 15
var y = 6
var isComplete = true

if(x < y){
    print("X be hon Y")
}
else{
    print("X lon hon Y")
}

if( x < y && isComplete){
    print("X nho Y va IsComplete = true")
}

if(x < y || isComplete){
    print("X < Y hoac isComplete = true")
}

// check mot so option khac

class Vehicle
{
    var wheels:Int = 0
    var maxSpeed:Int = 0
    
    func drive()
    {
        print("This vehicle is driving!")
    }
}

class RaceCar: Vehicle
{
    var hasSpoiler = true
    
    override func drive()
    {
        print("VROOOOM!!!")
    }
}

class Bus: Vehicle
{
    var seats:Int = 0
    var gear:Int = 1
    
    func shiftGears()
    {
        gear += 1
    }
    
    override func drive() {
        print("lai thu xe coi ntn ")
    }
}

let ferrari = RaceCar()
ferrari.wheels = 4
ferrari.hasSpoiler = false
ferrari.drive()

let bicycle = Vehicle()
bicycle.wheels = 2
bicycle.drive()

let greyhound = Bus()
greyhound.wheels = 8
greyhound.shiftGears()
greyhound.shiftGears()
greyhound.drive()
print("Gear: \(greyhound.gear)")


var firstName = "Andrei"
var lastName = "Puni"

// your code here
var fullName = firstName + " " + lastName

print("Full name is \(fullName)")

var aString:String = "Replace the letter e with *"

var replacedString = aString.repla


