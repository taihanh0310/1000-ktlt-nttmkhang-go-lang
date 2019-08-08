import Foundation

var count = 0
var lotteryNumbers: [Int] = [];

while count <  6 {
  let lotto_number = Int(arc4random_uniform(49)) + 1
  if lotteryNumbers.contains(lotto_number) {
    // print("ALREADY HAS #{lotto_number}")
    continue
  } else {
    lotteryNumbers.append(lotto_number)
    count += 1
  }
}

print("Your winning lottery numbers are \(lotteryNumbers), good luck!")
