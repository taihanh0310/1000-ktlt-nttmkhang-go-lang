import Foundation

extension String {
    // Removes a single trailing newline if the string has one.
    func chomp() -> String {
        if self.hasSuffix("\n") {
            return self[self.startIndex..<self.endIndex.predecessor()]
        } else {
            return self
        }
    }
}

func gets() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    var stringData = NSString(data: inputData, encoding:NSUTF8StringEncoding)
    return stringData!
}

print("Enter your annual income")
var income = (gets().chomp() as NSString).floatValue
var tax = 0.0

if income > 0 && income <= 18200 {
	println("No tax")
} else if income > 18201 && income <= 37000 {
	tax = (income - 18200) * 0.19
} else if income > 37001 && income <= 80000 {
	tax = (income - 37000) * 0.325 + 3572
} else if income > 80001 && income <= 180000 {
	tax = (income - 80000) * 0.37 + 17547
} else {
	tax = (income - 180000) * 0.45 + 54547
} 
println("Your personal annual income:$\(tax)")
		