
import Foundation

let letters = ["U", "K", "S", "A", "R", "G", "I", "N"]
var isDigitUsed = [0: false, 1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false, 8: false, 9: false ]
var letterToDigits = [String: Int]() // Dictionary store the solution

func decodeLettersToNumber(letters: String, lookup: [String: Int]) -> Int {

  var str = letters
  for (k, v) in lookup {
      str = str.replacingOccurrences(of: k, with: String(v))
  }
  return Int(str)!;
}

func checkAnwer() {
  let uk = decodeLettersToNumber(letters: "UK", lookup: letterToDigits)
  let usa = decodeLettersToNumber(letters: "USA", lookup: letterToDigits)
  let ussr = decodeLettersToNumber(letters: "USSR", lookup: letterToDigits)
  let aging = decodeLettersToNumber(letters: "AGING", lookup: letterToDigits)
  if uk + usa + ussr  == aging {
    print("\(uk) + \(usa) + \(ussr) = \(aging)")
    print(letterToDigits)
  }

}


func solve(letterPosition: Int = 0) {
  
  if letterPosition == letters.count {  // got 8 letters filled
    checkAnwer()
    return
  }
  
  for i in 0...9 {
    //# assign 0 - 9 to each letter
    if i == 0 && (letters[letterPosition] == "U" || letters[letterPosition] == "A") { // no leading 0
      continue
    }
    
    if letters[letterPosition] == "A" && i != 1 {
      continue
    }

    if letters[letterPosition] == "U" && i != 9 {
      continue
    }
    
    if letters[letterPosition] == "G" && i != 0 {
      continue
    }

    if isDigitUsed[i] == false {
      isDigitUsed[i] = true  // the number is used
      letterToDigits[letters[letterPosition]] = i
      solve(letterPosition: letterPosition + 1)  // move to next letter
      isDigitUsed[i] = false // clear
    }
  
  }
}

solve()
