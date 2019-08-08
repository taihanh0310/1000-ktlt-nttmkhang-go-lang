
var primeNumbers: [Int] = []

for num in (2...20) {
  // check one number is a prime number or not
  var flag = true
  
  if num == 2 {
    primeNumbers.append(num)
    continue
  }

  for x in (2...num-1) { // trying to check each possible divisor
    if num % x == 0 {
      flag = false // mark this has divisor
      break // no point to check more - composite, moves on to next
    }
  }

  if flag {  // the number has no divisors
    primeNumbers.append(num) // add to prime number list
  }
}

print("Prime numbers (up to 20) are : \(primeNumbers)")
