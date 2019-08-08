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


for var row = 1; row <= 15; ++row {
    var starCount = 0
    var spaceCount = 0
    
    if (row <= 8) {
        starCount  = row * 2 - 1
        spaceCount = 9 - row
    } else {
        starCount  = (16 - row) * 2 - 1
        spaceCount  = row - 7
    }
    var spaceInFront = "".join(Array(count: spaceCount, repeatedValue: " "))
    var stars = "".join(Array(count: starCount, repeatedValue: "*"))
    println(spaceInFront + stars)
}
