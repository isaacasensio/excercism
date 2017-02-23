import Foundation

class Squares {
  let squareOfSums : Double
  let sumOfSquares : Double
  let differenceOfSquares : Double

  init(number: Double) {
      let rangeOfNumbers = stride(from:1, to: number + 1, by: 1)
      let sum = rangeOfNumbers.reduce(0, +)
      squareOfSums = pow(sum, 2)

      let squares = rangeOfNumbers.map { $0 * $0 }
      sumOfSquares = squares.reduce(0, { $0 + $1})

      differenceOfSquares = squareOfSums - sumOfSquares
  }
}
