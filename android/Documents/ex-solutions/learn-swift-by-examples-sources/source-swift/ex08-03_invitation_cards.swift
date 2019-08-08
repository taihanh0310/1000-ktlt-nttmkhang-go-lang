
import Foundation


let guestList = ["Pokkle", "Angela", "Tonpa", "Toby", "Biscuit", "Mito", "Kate", "Renee", "Chloe", "Kelly", "Melody"]

let invitation : String = "Dear {{first_name}}, \n\nI am celebrating my 12th Birthday on the 1st of April!\nCome celebrate with me! \n\nWhere: 42 Greed-Island Street, Yorkshin City\nWhen: 2PM to 5PM\nRSVP: 24th of March (0400-000-000 or rsvpjessica@gmail.com)\n\nHope to see you there,\n\nJessica.\n";

for guest in guestList {
    var named_invitation = invitation.stringByReplacingOccurrencesOfString("{{first_name}}", withString: guest)
    println(named_invitation)
    named_invitation.writeToFile("/Users/zhimin/\(guest.lowercaseString)_invitations.txt", atomically: false, encoding: NSUTF8StringEncoding, error: nil)
}
