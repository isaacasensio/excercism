import XCTest
@testable import DifferenceOfSquares

class DifferenceOfSquaresTests: XCTestCase {

    func testSquareOfSumsTo5() {
        XCTAssertEqual(225, Squares(number: 5).squareOfSums)
    }

    func testSumOfSquaresTo5() {
        XCTAssertEqual(55, Squares(number: 5).sumOfSquares)
    }

    func testDifferenceOfSquaresOfSumsTo5() {
        XCTAssertEqual(170, Squares(number: 5).differenceOfSquares)
    }

    func testSquareOfSumsTo10() {
        XCTAssertEqual(3025, Squares(number: 10).squareOfSums)
    }

    func testSumOfSquaresTo10() {
        XCTAssertEqual(385, Squares(number: 10).sumOfSquares)
    }

    func testDifferenceOfSquaresOfSumsTo10() {
        XCTAssertEqual(2640, Squares(number: 10).differenceOfSquares)
    }

    func testSquareOfSumsTo100() {
        XCTAssertEqual(25_502_500, Squares(number: 100).squareOfSums)
    }

    func testSumOfSquaresTo100() {
        XCTAssertEqual(338_350, Squares(number: 100).sumOfSquares)
    }

    func testDifferenceOfSquaresOfSumsTo100() {
        XCTAssertEqual(25_164_150, Squares(number: 100).differenceOfSquares)
    }

    static var allTests: [(String, (DifferenceOfSquaresTests) -> () throws -> Void)] {
        return [
            ("testSquareOfSumsTo5", testSquareOfSumsTo5),
            ("testSumOfSquaresTo5", testSumOfSquaresTo5),
            ("testDifferenceOfSquaresOfSumsTo5", testDifferenceOfSquaresOfSumsTo5),
            ("testSquareOfSumsTo10", testSquareOfSumsTo10),
            ("testSumOfSquaresTo10", testSumOfSquaresTo10),
            ("testDifferenceOfSquaresOfSumsTo10", testDifferenceOfSquaresOfSumsTo10),
            ("testSquareOfSumsTo100", testSquareOfSumsTo100),
            ("testSumOfSquaresTo100", testSumOfSquaresTo100),
            ("testDifferenceOfSquaresOfSumsTo100", testDifferenceOfSquaresOfSumsTo100),
        ]
    }
}
