
import Foundation

class Library {
  
  static var books:     [Book] = []
  static var members: [Member] = []
  static var rentals: [Rental] = []
 
  class func importBooks(csvFilePath: String) {
    var fileContent = ""
    do {
      fileContent = try String(contentsOfFile: csvFilePath, encoding: String.Encoding.utf8)
    } catch let error as NSError {
      print("Error: \(error)")
    }
    
    let lines = fileContent.components(separatedBy: "\n")
    for line in lines {
      var fields = line.components(separatedBy: ",")
      if fields.count < 2 || fields[0] == "TITLE" { // empty file or heading row
        continue
      }
      books.append( Book(title: fields[0], author: fields[1]) )
    }
    
  }
  
  class func findByTitle(title: String) -> Book? {
    var the_book: Book?
    for book in self.books {
      if book.title == title {
        the_book = book
        return the_book
      }
    }
    print("Book '\(title)' not found")
    return the_book
  }
  
  class func bookCount() -> Int {
    return books.count
  }

  class func borrow(_ member: Member, book: Book) {
    if book.status == "available" {
      rentals.append( Rental(member: member, book: book) )
      book.status = "checked out"
      print("\(member.name) borrows '\(book.title)' OK.")
    } else {
      print("The book '\(book.title)' is not available!")
    }
  }
  
  class func returnBook(_ book: Book) {
    var the_rental: Rental?
    
    for rental in rentals {
      if rental.book === book {
        the_rental = rental // found the rental record
        break
      }
    }
    
    if the_rental != nil {
      the_rental?.finish()
      print("The book '\(the_rental!.book.title)' is returned.")
      book.status = "available"
    }

  }

}

class Book {

  var title: String
  var author: String
  var status: String = String()
  
  init(title: String, author: String) {
    self.title = title
    self.author = author
    self.status = "available"
  }
  
}

class Member {
  var name: String
  var memberId: String
  
  init(name: String, memberId: String) {
    self.name = name
    self.memberId = memberId
  }
}


class Rental {
  var member: Member
  var book: Book
  var is_active: Bool = false
  
  init(member: Member, book: Book) {
    self.member = member
    self.book = book
    self.is_active = true
  }
  
  func finish(){
    self.is_active = false
  }

}

let booksCsvFile  = "\(NSHomeDirectory())/work/swiftcode/files/books.csv"
Library.importBooks(csvFilePath: booksCsvFile)
print(Library.bookCount()) // => 10

var john = Member(name: "John Sully", memberId: "1001")
var mike = Member(name: "Mike Zasky", memberId: "1002")

var book = Library.findByTitle(title: "Practical Web Test Automation")
print(book!)

Library.borrow(john, book: book!)
// Output "OK"
Library.borrow(mike, book: book!)
// Output: The book 'Practical Web Test Automation' is not available!
Library.returnBook(book!)
Library.borrow(mike, book: book!)
// Output "OK"

