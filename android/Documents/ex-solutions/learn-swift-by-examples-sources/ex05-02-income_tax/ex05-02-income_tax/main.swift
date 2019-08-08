import Foundation

print("Enter your annual income: ", terminator: "")
var income = (readLine()! as NSString).floatValue
var tax : Float = 0.0

switch (income) {
case 0...18200:
  print ("No Tax")
case 18201...37000:
  tax = (income - 18200) * 0.19
case 37001...90000:
  tax = (income - 37000) * 0.325 + 3572
case 90001...180000:
  tax = (income - 90000) * 0.37 + 20797
default:
  tax = (income - 180000) * 0.45 + 54097
}

/* IF-ELSE WAY
if income > 0 && income <= 18200 {
	print("No tax")
} else if income > 18201 && income <= 37000 {
	tax = (income - 18200) * 0.19
} else if income > 37001 && income <= 80000 {
	tax = (income - 37000) * 0.325 + 3572
} else if income > 90001 && income <= 180000 {
	tax = (income - 90000) * 0.37 + 20797
} else {
	tax = (income - 180000) * 0.45 + 54097
} 
*/

print("Your personal income tax amount: $\(tax)")
		
