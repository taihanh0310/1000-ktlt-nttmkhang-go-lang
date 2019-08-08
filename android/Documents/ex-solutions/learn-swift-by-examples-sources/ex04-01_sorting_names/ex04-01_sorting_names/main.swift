/*   Sorting children names
#

# Enter child names in class: (0 to finish):
# Dominic
# Courtney
# Anna
# Angela
# Ella
# Toby
# Emma
# 0
#
# Kids in order:
# Angela, Anna, Courtney, Dominic, Ella, Emma, Toby

*/

import Foundation

var kidNames: [String] = []
var userInput: String;

print("Enter child names in class: (0 to finish)")

repeat {
  userInput = readLine()!
  if userInput != "0" {
    kidNames.insert(userInput, at: 0)
  } else {
      
  }
} while userInput != "0"

print("Kids in order :")
kidNames.sort { $0 < $1 }
print(kidNames)
