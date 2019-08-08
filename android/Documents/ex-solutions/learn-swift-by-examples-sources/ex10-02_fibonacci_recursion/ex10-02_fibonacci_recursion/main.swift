
func fibonacci(num:Int) -> Int {
  if (num <= 1) {
    return num
  }
  
  return fibonacci(num: num - 1) + fibonacci(num: num - 2)
}

print( fibonacci(num: 10) )  // => 55
