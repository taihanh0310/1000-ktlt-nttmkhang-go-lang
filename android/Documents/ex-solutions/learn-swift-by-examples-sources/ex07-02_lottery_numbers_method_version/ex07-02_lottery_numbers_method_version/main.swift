import Foundation

func getNextValidLotteryNumber(existingNumbers: [Int])  -> Int {
  var lottoNumber = Int(arc4random_uniform(49)) + 1
  while existingNumbers.contains(lottoNumber) {
    lottoNumber = Int(arc4random_uniform(49)) + 1
  }
  return lottoNumber
}

var count = 0
var lotteryNumbers: [Int] = [];

while count <  6 {
  lotteryNumbers.append( getNextValidLotteryNumber(existingNumbers: lotteryNumbers) )
  count += 1
}

print("Your winning lottery numbers are \(lotteryNumbers), good luck!")
