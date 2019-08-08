//
//  ex05-05-number_sorting

var array = [2, 8, 7, 3, 4, 5, 9, 1, 10, 6]

for idx in 0...array.count-2 {
    // println(idx)
    for idx2 in (idx+1)...(array.count-1)  {
        if array[idx] > array[idx2] {
            let temporaryA = array[idx]
            array[idx] = array[idx2]
			array[idx2] = temporaryA
        }
    }
}
println("The numbers in order: \(array)")