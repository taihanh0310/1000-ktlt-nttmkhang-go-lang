
import Foundation

func compoundInterest(principal: Float, rate: Float, years: Int) -> Float {
  if (years == 0) {
    return principal
  } else  {
    return compoundInterest(principal: principal * (1 + rate), rate: rate, years: years-1)
  }
}

print("Enter deposited amount : $", terminator: "")
var amount = Float(readLine()!)!
print("Enter interest rate (8% enter 0.08): ", terminator: "")
var rate = Float( readLine()! )!
print("For how long (years): ", terminator: "")
var years = Int(readLine()!)
print("")

var theTotal = compoundInterest(principal: amount, rate: rate, years: years!)
print( "After \(years!) years, you will get $\(theTotal)" )
