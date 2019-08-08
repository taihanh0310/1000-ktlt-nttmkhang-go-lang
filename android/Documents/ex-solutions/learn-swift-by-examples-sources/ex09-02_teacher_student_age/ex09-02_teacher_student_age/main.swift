//
//  main.swift
//  ex09-01_teacher_student_age
//

import Foundation

class Person {
  var name : String
  var birthDate: Date
  var gender: String?
  
  init(name: String, birthDate: String) {
    self.name = name
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "YYYY-MM-DD"
    self.birthDate = dateFormatter.date(from: birthDate)!
  }
  
  func age() -> Int {
    let calendar  = Calendar.current;
    let ageComponents = (calendar as NSCalendar).components(.year,
        from: self.birthDate,
        to: Date(),
        options: [])
    
    return ageComponents.year!
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

print("Teacher '\(teacher_1.name)' age: \(teacher_1.age())")

var avgTeacherAge =  (teacher_1.age() + teacher_2.age() ) / 2;
print( "Average Teacher age: \(avgTeacherAge)")

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
var avgGrade10StudentAge = grade10StudentAges.reduce(0, +) / grade10StudentAges.count
print("Average Grade 10 students age: \(avgGrade10StudentAge)")
