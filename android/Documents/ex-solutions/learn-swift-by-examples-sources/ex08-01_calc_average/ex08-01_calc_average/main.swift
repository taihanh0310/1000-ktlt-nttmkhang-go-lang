
import Foundation

/*
// use relative path within the bundle

let bundle = NSBundle.mainBundle()
let path = bundle.pathForResource("score", ofType: "txt")
*/

let path:String = "\(NSHomeDirectory())/work/swiftcode/files/score.txt"

var content:String = ""

// error handling, introduced in Swift 2
do {
  content = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
} catch let err as NSError {
  print("Reading file Error: \(err) on reading file: \(path)")
}

var strArray = content.components(separatedBy: "\n")
var intArray: [Int] = []

for str in strArray  {
  if str != "" {
    intArray.append(Int(str)!)
  }
}
var theSum: Int = intArray.reduce(0, +)
// error if only one is Float type
let theAverage = Float(theSum) / Float(intArray.count)
print("Average score is " + String(format: "%0.1f", theAverage) )
