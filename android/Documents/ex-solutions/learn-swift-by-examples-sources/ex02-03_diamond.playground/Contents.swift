/*
 Write a program generates
 
 *
 ***
 *****
 *******
 *****
 ***
 *
 
 */


for row in 1...7 {
  var starCount = 0
  var spaceCount = 0
  
  if (row <= 4) {
    starCount  = row * 2 - 1
    spaceCount = 5 - row
  } else {
    starCount  = (8 - row) * 2 - 1
    spaceCount  = row - 3
  }
  
  let spaceInFront = String(repeating: " ", count: spaceCount);
  let stars = String(repeating: "*", count: starCount)
  
  print(spaceInFront + stars)
}
