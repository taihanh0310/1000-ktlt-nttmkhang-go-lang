//
//  Snake.swift
//  ex11-SnakeGame


import Foundation


class GameBoard {
  var width: Int = 24
  var height: Int = 18
}

class Snake {
  
  var length:Int = 0  // Snake has
  var direction  = 0  // 0 for up, 1 right, 2 down, 3 left
  
  init(length: Int) {
    self.length = length
  }
  
  // based on current direction
  func move() {
    
  }
  
  //
  func changeDirection() {
    
  }
  
  func headHitBody() -> Bool {
    
    return false
  }
  
  
}