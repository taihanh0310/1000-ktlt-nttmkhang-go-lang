//: Playground - noun: a place where people can play

import Foundation

// print out text
print("a" + "b");   // => "ab"
print(1 + 2)    		// => 3
print("1" + "2")  	// => "12"

// print out without new line after
print("Hi", terminator: "")
print("Bob")
// the screen output will be "HiBob"


var total = 1 + 2 + 3;  // => total has value: 6
var average = total / 3;
print(average)		      // => 2

// print string with variable
print("average is \(average)")


var str1:String
// str1 = nil // wrong: nil cannot be assigned to String

var str2:String?
str2 = nil  // OK
str2 = "ABC"

var str3:String
// str3 = str2 // wrong: optional type 'String?' not unwrapped
str3 = str2!


// Math
2 * 4 + 4 / 2  // => 10
pow(Double(2), Double(3)) // => 8

Double.pi // => 3.141592653589793

if true {
  print("OK")
} else {
  // print("Never reach here")
}

var a = 10
var b = 20
if (a > b) {
  print("a is bigger")
} else if a < b {
  print("b is bigger")
} else {
  print("a,b the same")
}


var score = 70
var result = ""

switch score {
case 0...60 :
  result = "Fail"
case 60...70 :
  result = "Pass"
case 71...95 :
  result = "Pass with Distinction"
case 96, 97, 98, 99:
  result = "Distinction"
case 100:
  result = "High Distinction"
default:
  result = "Invalid Score"
}
print(result)

var range = 1...100
var array = Array(range) // range to array => [1, 2, ..., 100]
array.reduce(0, +)

// while loop
var loopCount = 0
while loopCount < 10 {
  loopCount = loopCount + 1
  print(loopCount)
}

// for loop in range
print("\nIterate in range")
for i in 1...3 {
  print(i)
}


print("\nSkip loop")
for i in 1...10 {
  if i % 2 == 0 {
    continue
  }
  print(i)
}
print("\n")

// break from an infinite loop
var count1 = 0
while true {
  count1 += 1
  print(count1)
  if (count1 > 5) {  // stop at 6
    break
  }
}

var scores = [20, 10, 30, 50]
scores.count // => 4
scores.sort()
print(scores) // [10, 20, 30, 50]
scores = [20, 10, 30, 50]
scores.sort { $1 < $0 }
print(scores) //[50, 30, 20, 10]

// return an new array
scores = [20, 10, 30, 50]
let ascScores = scores.sorted{ $0 < $1 }
print(ascScores)   // => new array: [10, 20, 30, 50]
print(scores)      // => unchanged: [20, 10, 30, 50]



var mostSpokenLangs = ["Chinese", "Spanish", "English", "Hindi", "Arabic"]
mostSpokenLangs[0] // => "Chinese", indexing starts 0
mostSpokenLangs[2] // => "English"
// mostSpokenLangs[-1]   // => fatal error: Array index out of range

if mostSpokenLangs.contains("Spanish")  {
  print("Yes")
}


var studentScores = [20, 10, 30, 50]
studentScores.append(80)  	// scores: [20,10,30,50, 80]
studentScores.remove(at: 2) // scores:  20,10,50, 80]
print(studentScores)	// => [20, 10, 50, 80]


for elem in [20, 10, 30] {
  print("Square of \(elem) is \(elem * elem)")
}


var usStates = ["CA": "California", "NY": "New York", "TX": "Texas"]
usStates["CA"] 	// =>  "California"
usStates.count 	// => 3

usStates["FL"] = "Florida"
usStates.count 	// => 4

usStates.removeValue(forKey: "NY")
print(usStates) // => {"CA"=>"California", "TX"=>"Texas", "FL"=>"Florida"}


var numberLookups = ["one": 1, "two": 2, "three": 3]
for key in numberLookups.keys {
  print("Arabic numeral of \(key) is \(numberLookups[key]!)")
}


func square(num: Int) -> Int {
  return num * num
}

square(num: 6)     // => 36

func square2(_ num: Int) -> Int {
  return num * num   // => equal to return num * num
}
print(square2(2))  // => 4
print(square2(9))  // => 81

func square3(number num: Int) -> Int {
  return num * num
}

square3(number: 3)  // => 9
//square2(3)   // Error: missing argument label 'number:'
//square2(num: 3) // incorrect argument label in call (have 'num:', expected 'number:')

func area(length: Int, width: Int) -> Int {
  return length * width
}

func exponent(num: Double, power:Double = 2) -> Double {
  return pow(num, power)  // exponential calculation
}

exponent(num: 5)            // => 25
exponent(num: 5, power: 3)  // => 125

var d = 1   // variable in scope of file

func add(a: Int, b: Int) -> Int {
  let c = a + b   // local scope of function
  print("inside c = \(c)")
  d = c
  return c
}

var c = 100; // local scope of outside, different from the c in add()
add(a:1, b: 2)
print("outside c = \(c)")
print("instance variable d = \(d)")



// times table
for i in 1...9 {
  for j in 1...9 {
    print("\(i) x \(j)  = \(i*j)")
  }
}




class Bird {
  
  init() { }
  func fly() {
    print("I am flying")
  }
}

class Seagull : Bird {
}

class Parrot : Bird {
  func speak() {
    print("if someone teaches me")
  }
}

var seagull = Seagull()
seagull.fly() // => "I am flying"

var parrot = Parrot()
parrot.fly() 		// => "I am flying"
parrot.speak()  // => "if someone teaches me"

class Ostrich : Bird {
  
  // Override a method defined in parent class
  override func fly() {
      print("I'd rather run")
  }
}

var ostrich = Ostrich()
ostrich.fly() // => "I'd rather run"

/*
seagull.speak() // NoMethodError: undefined method `speak' for #<Seagull:xxx>
*/



protocol Loggable {
  func log(message: String)
}

// default implementation
extension Loggable {
  func log(message: String) {
    print( "[\(Date())] [\(type(of: self))] \(message)");
  }
}

class A : Loggable {
}

class B : Loggable {
  
}

class C  {
}

var objA = A()
var objB = B()
var objC = C()

objA.log(message: "in A") // => [2016-01-01 16:07:32 +1000] [A] in A
objB.log(message: "in B") // => [2016-01-01 16:07:32 +1000] [B] in B
// objC.log(message: "in C") // => error: value of type 'C' has no member 'log'


var startTime: NSDate = NSDate();
print(startTime)  // 2016-01-06 10:10:18 +0000

let filePath = "/Users/zhimin/score.txt"
do {
  let fileContent = try String(contentsOfFile: filePath)
  print(fileContent)
  // ...
} catch var error as NSError {
  print("Error: \(error)")
}

var str = "12 15 7 8 25"
var strArray = str.components(separatedBy: " ")
var numArray:[Int] = []
for numStr in strArray {
    numArray.append(Int(numStr)!)
}
print(numArray)

var new_file_content = "Laugh is the best medicine"
try! new_file_content.write(toFile: "/Users/zhimin/a_test_file.txt", atomically: true, encoding: String.Encoding.utf8)



