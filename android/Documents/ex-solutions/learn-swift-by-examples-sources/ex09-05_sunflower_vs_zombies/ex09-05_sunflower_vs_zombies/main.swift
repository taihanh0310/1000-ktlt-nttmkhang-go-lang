//
//  main.swift
//  ex09-05_sunflower_vs_zombies
//

import Foundation

let DISTANCE:Int = 10

class Sunflower {
  var health: Int
  
  init() {
    health = 100
  }
  
  func exchangeFire(zombie: Zombie) {
      
    if zombie.in_touch_distance() {
      health -= 5
    } else {
      health -= ( Int(arc4random() % 2) + 1)
    }
    
    if health <= 0 {
      health = 0
    }
    
    zombie.health -= ( Int(arc4random() % 31) + 10) // between 10 to 40 damage
    
    if zombie.health <= 0 {
      zombie.die()
    } else {
      zombie.move_forward()
    }
      
  }
    
}

class Zombie {

  var health: Int
  var step: Int
  var movingSpeed: Int
  
  // static variable (not class variable, not inherited by subclass)
  static var liveCount :Int = 0
  
  init() {
    health = 100
    step = 0
    movingSpeed = (arc4random() % 10) >= 8  ?  2 : 1 //  80% are jumping zombies
    Zombie.liveCount += 1
  }
  
  func die() {
    health = 0
    Zombie.liveCount -= 1
  }
  
  func is_dead() -> Bool {
    return health <= 0
  }
  
  func in_touch_distance() -> Bool {
    return step == DISTANCE
  }
  
  func move_forward() {
    step += movingSpeed
    if step >= DISTANCE {
      step = DISTANCE
    }
  }
    
}


let ZOMBIES_COUNT = 15
print("\nY(100)  ___ ___ ___ ___ ___ ___ ___ ___ ___ ___", terminator: "")

let sunflower = Sunflower()
var zombies = [Zombie]()
for _ in 1...ZOMBIES_COUNT {
    zombies.append(Zombie())
}


var active_zombie: Zombie = zombies[0]

while (sunflower.health > 0) {
  // sleep(1000) // adjust game speed, smaller number, faster
  Thread.sleep(forTimeInterval: 0.1)
  
  if active_zombie.is_dead() {
    if zombies.count > 0 {
      active_zombie = zombies.remove(at: 0)
    }
  }
  
  if zombies.count == 0 {
    break
  }
  
  sunflower.exchangeFire(zombie: active_zombie)

  let flower_health_str =  String(format: "%2d", sunflower.health) // .to_s.rjust(3, " ")
  print("\r", terminator: "")
  print("F(\(flower_health_str))  ", terminator: "")

  let zombie_health = String(format: "%2d", active_zombie.health)
  let zombie_pos = "Z\(zombie_health)"
  
  var fields : [String] = []
  
  for index in 0...9 {
    if active_zombie.step == (10-index) {
      fields.append(zombie_pos)
    } else {
      fields.append("___")
    }
  }

  print(fields.joined(separator: " "), terminator: "") // print out pos without new line
  fflush(__stdoutp) // flush stdout to see moving effect
}

if sunflower.health > 0 {
  print("\nYou Win! The sunflower survived attacks from \(ZOMBIES_COUNT) zombies.")
} else {
  print("\nGame Over!")
}
