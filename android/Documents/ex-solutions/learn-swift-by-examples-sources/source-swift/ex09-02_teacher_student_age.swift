
import Foundation
import Cocoa

class Person {
    let name : String
    let birthDate: NSDate
    // var gender: String
    
    init(name: String, birthDate: NSString) {
        self.name = name
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-DD"
        self.birthDate = dateFormatter.dateFromString(birthDate)!
        
        // self.birthDate = NSDate()
        // self.gender = "Male"
    }
    
    func age() -> Int {
        var calendar  = NSCalendar.currentCalendar();
        let ageComponents = calendar.components(.CalendarUnitYear,
            fromDate: self.birthDate,
            toDate: NSDate(),
            options: nil)
        
        return ageComponents.year
    }
    
}

class Teacher : Person {
    
    
}

class Student : Person {
    
    var grade: Int
    
    init(name: String , birthDate: String, grade: Int) {
        self.grade = grade
        super.init(name: name, birthDate: birthDate)
    }
}


var teacher_1 = Teacher(name: "James Bond", birthDate: "1968-04-03")
var teacher_2 = Teacher(name: "Michael Zasky", birthDate: "1978-01-02")

println("Teacher '\(teacher_1.name)' age: \(teacher_1.age())")

var avgTeacherAge =  (teacher_1.age() + teacher_2.age() ) / 2;
println( "Average Teacher age: \(avgTeacherAge)")

var students = [Student]()
students.append(Student(name: "John Sully", birthDate: "1999-10-03", grade: 10))
students.append(Student(name: "Michael Page", birthDate: "1999-05-07", grade:11))
students.append(Student(name: "Anna Boyle", birthDate: "1998-12-03", grade:10))
students.append(Student(name: "Dominic Chan", birthDate: "1999-09-10", grade:10))


var grade10StudentAges = [Int]()
for student in students {
    if student.grade == 10 {
      grade10StudentAges.append(student.age())
    }
}
var avgGrade10StudentAge = grade10StudentAges.reduce(0,+) / grade10StudentAges.count
println("Average Grade 10 students age: \(avgGrade10StudentAge)")
