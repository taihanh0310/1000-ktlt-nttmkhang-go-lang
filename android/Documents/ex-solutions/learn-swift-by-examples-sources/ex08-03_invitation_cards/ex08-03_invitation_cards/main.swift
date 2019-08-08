
import Foundation

let guestList = ["Pokkle", "Angela", "Tonpa", "Toby", "Biscuit", "Mito", "Kate", "Renee", "Chloe", "Kelly", "Melody"]

let invitation: String = "Dear {{first_name}}, \n\nI am celebrating my 12th Birthday on the 1st of April!\nCome celebrate with me! \n\nWhere: 42 Greed-Island Street, Yorkshin City\nWhen: 2PM to 5PM\nRSVP: 24th of March (0400-000-000 or rsvpjessica@gmail.com)\n\nHope to see you there,\n\nJessica.\n";

for guest in guestList {
  let named_invitation = invitation.replacingOccurrences(of: "{{first_name}}", with: guest)
  print(named_invitation)
  do {
    try named_invitation.write(toFile: "/Users/zhimin/\(guest.lowercased())_invitations.txt",
                                    atomically: false, encoding: String.Encoding.utf8)
  } catch _ {
  }
}
