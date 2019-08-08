//: Playground - noun: a place where people can play

import Cocoa

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
  let stars = String(repeating: "*", count: index);
  print(stars)
}
