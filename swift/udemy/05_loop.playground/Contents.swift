import UIKit

var salaries = [45000.0, 100000.0, 54000.0, 20000.0]

// tang luong them 10% so voi muc luong cu

var index = 0
repeat{
    salaries[index] = salaries[index] + (salaries[index] * 0.1)
    index += 1
} while (index < salaries.count)

print(salaries)

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.1)
}

print(salaries)

for salary in salaries {
    print(salary)
}

print(salaries)
