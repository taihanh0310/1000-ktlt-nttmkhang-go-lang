import Foundation

func getNextValidLotteryNumber(existingNumbers: [Int])  -> Int {
    var lotto_number = Int(arc4random_uniform(49)) + 1
    while contains(existingNumbers, lotto_number) {
        lotto_number = Int(arc4random_uniform(49)) + 1
    }
    return lotto_number
}

var count = 0
var lotteryNumbers: [Int] = [];

while count <  6 {
    lotteryNumbers.append( getNextValidLotteryNumber(lotteryNumbers) )
    count += 1
}

println("Your winning lottery numbers are \(lotteryNumbers), good luck!")