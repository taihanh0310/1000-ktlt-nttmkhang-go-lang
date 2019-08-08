//
//  main.swift
//  ex08-06_send_emails
//

import Foundation
import Cocoa

// Send invitation cards by email

let testMode = true
let my_email = "yourname@gmail.com"

let guestList = [
  ["first_name": "Pokkle", "email": "pokkle@archer.com",  "gift": "Bow and Arrows"],
  ["first_name": "Angela", "email": "catlover@gmail.com", "gift": "Cat Statue"],
  // ...
]

let thankYouTemplate = "Dear {{first_name}},\n\nThank you for coming to my 12th party, I really like the gift you gave me: {{gift}}, thank you very much!\n\nJessica"

for entry in guestList {
  let content = thankYouTemplate.replacingOccurrences(of: "{{first_name}}",  with: entry["first_name"]!).replacingOccurrences(of: "{{gift}}",  with: entry["gift"]!)
  print(content);
  
  
}


//var smtpSession = MCOSMTPSession()
//smtpSession.hostname = "smtp.gmail.com"
//smtpSession.username = "matt@gmail.com"
//smtpSession.password = "xxxxxxxxxxxxxxxx"
//smtpSession.port = 465
//smtpSession.authType = MCOAuthType.SASLPlain
//smtpSession.connectionType = MCOConnectionType.TLS
//smtpSession.connectionLogger = {(connectionID, type, data) in
//  if data != nil {
//    if let string = NSString(data: data, encoding: NSUTF8StringEncoding){
//      NSLog("Connectionlogger: \(string)")
//    }
//  }
//}
//
//var builder = MCOMessageBuilder()
//builder.header.to = [MCOAddress(displayName: "Rool", mailbox: "itsrool@gmail.com")]
//builder.header.from = MCOAddress(displayName: "Matt R", mailbox: "matt@gmail.com")
//builder.header.subject = "My message"
//builder.htmlBody = "Yo Rool, this is a test message!"
//
//let rfc822Data = builder.data()
//let sendOperation = smtpSession.sendOperationWithData(rfc822Data)
//sendOperation.start { (error) -> Void in
//  if (error != nil) {
//    NSLog("Error sending email: \(error)")
//  } else {
//    NSLog("Successfully sent email!")
//  }
//}

var service = NSSharingService(named: NSSharingService.Name.composeEmail)
service?.delegate = nil
service?.subject = "Thank you for your gift"
let body = "This is an email."
let shareItems = [body] as Array
service?.perform(withItems: shareItems)

/*
require 'mail'

options = {
    :enable_starttls_auto => true,
    :address => 'smtp.gmail.com',
    :port => 587,
    :authentication => 'plain',
    :user_name => 'yourname@gmail.com',
    :password => 'secret'
}

Mail.defaults do
delivery_method :smtp, options
end


guest_list.each do |entry|

content = 	thank_you_template.gsub("{{first_name}}", entry[:first_name]).gsub("{{gift}}", entry[:gift])

puts content
Mail.deliver do
from     my_email
to       test_mode ?  "zhiminzhan+#{entry[:first_name]}@gmail.com" : entry[:email]
subject  'Thank you for your gift'
body     content
end

end
*/
