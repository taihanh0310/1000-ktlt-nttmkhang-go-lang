
func hcf(a: Int, b: Int) -> Int  {

  if (a == 0) {
    return b
  } else if (b == 0) {
    return a
  } else {
    return hcf(a: b, b: a % b)
  }
}

print( hcf(a: 2480, b: 1960) )
