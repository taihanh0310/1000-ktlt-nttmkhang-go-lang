// Playground - noun: a place where people can play

/* Write a program generates

*
**
***
****
*****
******
*******
********
*********
**********

*/

for index in 1...5 {
    var stars = "".join(Array(count: index, repeatedValue: "*"))
    println(stars)
}
