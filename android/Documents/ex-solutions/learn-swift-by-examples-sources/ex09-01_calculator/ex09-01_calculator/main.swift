
import Foundation

class Calculator {

  func add(one: Int, another: Int) -> Int {
    return one + another
  }

  func minus(one: Int, another: Int) -> Int {
    return one - another
  }
}

var calc = Calculator()
print( calc.add(one: 2, another: 3) )
print( calc.minus(one: 17, another: calc.add(one: 2, another:3) ) )
