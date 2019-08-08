
import Foundation

let folderPath = "\(NSHomeDirectory())/work/swiftcode/files/book_dir"

let fileManager = FileManager.default
let enumerator:FileManager.DirectoryEnumerator = fileManager.enumerator(atPath: folderPath)!

while let fileName = enumerator.nextObject() as? String {
	
  // OK for search
  // if let match = element.rangeOfString("chapter\\s(\\d+)(.*)", options: .RegularExpressionSearch)  {
  //   print(match.debugDescription)
  // }

  let re = try! NSRegularExpression(pattern: "chapter\\s(\\d+)(.*)", options: [])
  
  let matches = re.matches(in: fileName, options: [],
                           range: NSRange(location: 0, length: fileName.utf16.count ))
  
  if matches.count == 0 {  // no matches
    continue
  }
  
  let firstMatch = matches[0]
  
  let originFilePath:String = folderPath + "/" + fileName
  var newFileName:String = ""

  // range at index 0: full match
  // range at index 1: first capture group

  let chapterNo = (fileName as NSString).substring(with: firstMatch.range(at: 1))
  var newSeq = chapterNo
  if (Int(chapterNo)! < 10) {
    newSeq = "0" + chapterNo
  }
  
  let fileExt = (fileName as NSString).substring(with: firstMatch.range(at: 2))
  
  newFileName = "chapter_\(newSeq)\(fileExt)"
  
  let newFilePath:String = folderPath + "/" + newFileName
  if newFileName.utf16.count > 0 {
    print("Rename \(originFilePath) to \(newFilePath)")
    var moveError: NSError?
    do {
      try fileManager.moveItem(atPath: originFilePath, toPath: newFilePath)
    } catch let error as NSError {
      moveError = error
      print(moveError!.localizedDescription)
    }
  }

}
