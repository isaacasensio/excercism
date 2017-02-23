//Solution goes in Sources
import Foundation

extension Int {
    func isMultiple(of : [Int]) -> Bool {
        return of.filter {$0 != 0}
            .filter {self % $0 == 0}
            .count > 0
    }
}

class SumOfMultiples {

    static func toLimit(number : Int, inMultiples: [Int]) -> Int{

        let rangeOfNumbers = stride(from:1, to: number, by: 1)

        return rangeOfNumbers
            .filter { $0.isMultiple(of: inMultiples)}
            .reduce(0, { $0 + $1})

    }
}
