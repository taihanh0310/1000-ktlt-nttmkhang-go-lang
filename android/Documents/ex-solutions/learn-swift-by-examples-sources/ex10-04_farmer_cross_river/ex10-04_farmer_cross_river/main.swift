
import Foundation

var itemPositions = ["farmer": "not_crossed", "wolf": "not_crossed", "sheep": "not_crossed", "cabbage": "not_crossed" ]
let items = ["farmer", "wolf", "sheep", "cabbage"]
var step = 1
var direction = "forward"  // default, another value "backward"
var movingLog = [ 0: itemPositions ];

func isAllCrossedRiver() -> Bool {
  var allCrossed = true
  for (_, status) in itemPositions {
    if (status == "not_crossed") {
      allCrossed = false
    }
  }
  return allCrossed
}

func printMovingLog() {
  let sortedDict = movingLog.sorted { $0.0 < $1.0 }
  for (step, positions) in sortedDict {
    
    var actionStr = "Step \(step)"
    
    var itemsNotCrossed = Set<String>()
    var itemsCrossed = Set<String>()
    
    for (item, status) in positions {
      if (status == "not_crossed") {
        itemsNotCrossed.insert(item)
      } else {
        itemsCrossed.insert(item)
      }
    }
    
    if (step > 0) {
      let prevItemPositions = movingLog[step - 1]
      
      var prev_itemsNotCrossed = [String]()
      var prev_itemsCrossed = [String]()
      
      for (item, status) in prevItemPositions! {
        if (status == "not_crossed") {
          prev_itemsNotCrossed.append(item)
        } else {
          prev_itemsCrossed.append(item)
        }
      }
      
      let diffCrosssed = itemsCrossed.subtracting(prev_itemsCrossed)
      let diffNotCrossed = itemsNotCrossed.subtracting(prev_itemsNotCrossed)
      
      if (diffCrosssed.count > 0) {
        actionStr += " \(diffCrosssed) forward"
      } else {
        actionStr += " \(diffNotCrossed) backward"
      }
      
    }

    print(actionStr);
    print("       \(itemsCrossed) <= \(itemsNotCrossed)")
  }
}

func isWithFarmer(item: String) -> Bool  {
  return itemPositions[item] ==  itemPositions["farmer"]
}

func move(item: String) {
  if itemPositions[item] == "crossed" {
    itemPositions["farmer"] = "not_crossed"
    itemPositions[item] = "not_crossed"
  } else {
    itemPositions["farmer"] = "crossed"
    itemPositions[item] = "crossed"
  }
  direction = (direction == "forward" ? "backward" : "forward")
}

func undoMove(item: String)  {
  if itemPositions[item] == "crossed" {
    itemPositions["farmer"] = "not_crossed"
    itemPositions[item] = "not_crossed"
  } else {
    itemPositions["farmer"] = "crossed"
    itemPositions[item] = "crossed"
  }
  direction = (direction == "forward" ? "backward" : "forward")
}

func isSafe() -> Bool {
  var itemsNotCrossed = [String]()
  var itemsCrossed = [String]()
  
  for (item, status) in itemPositions {
    if (status == "not_crossed") {
      itemsNotCrossed.append(item)
    } else {
      itemsCrossed.append(item)
    }
  }

  for _ in itemsNotCrossed {
    if !itemsNotCrossed.contains("farmer") {
      if itemsNotCrossed.contains("sheep") && itemsNotCrossed.contains("cabbage") {
          return false
      }
      if itemsNotCrossed.contains("sheep") && itemsNotCrossed.contains("wolf") {
          return false
      }
    }
  }

  for _ in itemsCrossed {
    if !itemsCrossed.contains("farmer") {
      if itemsCrossed.contains("sheep") && itemsCrossed.contains("cabbage") {
        return false
      }
      if itemsCrossed.contains("sheep") && itemsCrossed.contains("wolf") {
        return false
      }
    }
  }
  
  return true
}

func hasDoneBefore() -> Bool {
  for (_, entry) in movingLog {
    if (entry["farmer"] == itemPositions["farmer"] && entry["sheep"] == itemPositions["sheep"] &&
        entry["wolf"] == itemPositions["wolf"] && entry["cabbage"] == itemPositions["cabbage"]) {
      return true
    }
  }
  return false
}

func cross() {
  
  if isAllCrossedRiver() {
    printMovingLog();
    print("Done")
    return // exit out of recursion
  }
  
  for item in items {
    if !isWithFarmer(item: item) {  // has to be move with farmer
      continue
    }
    
    if item == "farmer" && direction == "forward" { // no point just move farmer cross
      continue;
    }
    
    move(item: item);
    
    if isSafe() && !hasDoneBefore() {
      movingLog[step] = ["farmer": itemPositions["farmer"]!, "wolf": itemPositions["wolf"]!, "sheep": itemPositions["sheep"]!, "cabbage": itemPositions["cabbage"]! ];
      step += 1
      cross() // next step, recursive
    }  else {
      undoMove(item: item)
    }
  }
  
}


// start the move
cross();
