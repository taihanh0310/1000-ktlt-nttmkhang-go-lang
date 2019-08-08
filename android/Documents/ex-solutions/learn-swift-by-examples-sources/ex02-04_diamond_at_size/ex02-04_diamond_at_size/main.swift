//
//  main.swift
//  ex02-04_diamond_at_size
//
//

import Foundation

print("Enter the number of rows for the diamond: ", terminator: "")
// print("Enter the number of rows for the diamond: ", terminator: "") //Swift 1
// string function to trim .trimmingCharacters(in: CharacterSet.whitespaces)
var height = Int( readLine()!)
var spaceCount = height! / 2 + 1

for row in (1 ..< height! + 1) {
  var starCount = 0
  
  if (row <= (height! / 2  + 1) ) {
    starCount  = row * 2 - 1
    spaceCount -= 1
  } else {
    starCount  = (height! - row) * 2 + 1
    spaceCount += 1
  }
  let spaceInFront = String(repeating: " ", count: spaceCount);
  let stars = String(repeating: "*", count: starCount);
  print(spaceInFront + stars)
}
