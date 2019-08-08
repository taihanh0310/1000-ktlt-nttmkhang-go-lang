import Foundation

var count = 0
var lotteryNumbers: [Int] = [];

while count <  6 {
    var lotto_number = Int(arc4random_uniform(49)) + 1
    if contains(lotteryNumbers, lotto_number) {
        // println("ALREADY HAS #{lotto_number}")
        continue
    } else {
        lotteryNumbers.append(lotto_number)
        count += 1
    }
}

println("Your winning lottery numbers are \(lotteryNumbers), good luck!")