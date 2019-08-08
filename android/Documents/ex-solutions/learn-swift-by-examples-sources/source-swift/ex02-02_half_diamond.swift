/*  Write a program generates

*
**
***
****
*****
******
*******
********
*******
******
*****
****
***
**
*

*/

for row in 1...15 {
    var starCount = row
    if (row > 8) {
        starCount = 16 - row
    }
    var stars = "".join(Array(count: starCount, repeatedValue: "*"))
    println(stars)
}

