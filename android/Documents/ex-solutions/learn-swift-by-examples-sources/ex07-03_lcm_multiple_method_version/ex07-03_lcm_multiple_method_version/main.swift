/*
 Rule 1: Write one line, run one line,
 Rule 2: Every line (do end counts one) shall work
*/

// return lcm for a and b
func lcm(a: Int, b: Int) -> Int {
  for n in a...a*b  {
    if n % a == 0 && n % b == 0 {
        return n
    } // end of if
  } // end of loop
  return a * b
}

// m = lcm(1, 2)
// m = lcm(m, 3)

var m = 1
for w in 2...15 {
  m = lcm(a: m, b: w)
  // print("The LCM for up to \(w) is \(m)")
}
print("The lowest number that is dividable by 1 to 15 is: \(m)")

