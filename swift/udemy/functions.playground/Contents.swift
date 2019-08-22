import Cocoa

var str = "Hello, playground"

// Functions and closures
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

greet(person: "Hanh", day: "Monday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if score > max{
            max = score
        }
        else if score < min{
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5,4,3,100,9,18])
print(statistics.sum)
print(statistics.min)
print(statistics.max)

// ham trong ham

func returnFifteen() -> Int {
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int) -> Int){
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

// tao function co the lay mot function khac
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

/////////////OBJECTTS AND CLASSES/////////////////
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String{
        return "A Shape with \(numberOfSides) sides"
    }
}

// create instance
var shape = Shape();
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
}

// ke thua

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A Square with side of lenght \(sideLength)"
    }
    
}

// test
let testSquare = Square(sideLength: 5.2, name: "my test square")
testSquare.area()
testSquare.simpleDescription()

class Circle: NamedShape{
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    func area() -> Double {
        return sideLength * 3.14
    }
    
    override func simpleDescription() -> String {
        return "A cicle with side of lengt \(sideLength)"
    }
}

/////////////OBJECTTS AND CLASSES/////////////////



