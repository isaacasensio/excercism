import XCTest
@testable import RnaTranscription

class RnaTranscriptionTests: XCTestCase {
    func testRnaComplementOfCytosineIsGuanine() {
        XCTAssertEqual("G", Nucleotide(dnaChain: "C").complementOfDNA)
    }

    func testRnaComplementOfGuanineIsCytosine() {
        XCTAssertEqual("C", Nucleotide(dnaChain: "G").complementOfDNA)
    }

    func testRnaComplementOfThymineIsAdenine() {
        XCTAssertEqual("A", Nucleotide(dnaChain: "T").complementOfDNA)
    }

    func testRnaComplementOfAdenineIsUracil() {
        XCTAssertEqual("U", Nucleotide(dnaChain: "A").complementOfDNA)
    }

    func testRnaComplement() {
        XCTAssertEqual("UGCACCAGAAUU", Nucleotide(dnaChain: "ACGTGGTCTTAA").complementOfDNA)
    }

    static var allTests: [(String, (RnaTranscriptionTests) -> () throws -> Void)] {
        return [
            ("testRnaComplementOfCytosineIsGuanine", testRnaComplementOfCytosineIsGuanine),
            ("testRnaComplementOfGuanineIsCytosine", testRnaComplementOfGuanineIsCytosine),
            ("testRnaComplementOfThymineIsAdenine", testRnaComplementOfThymineIsAdenine),
            ("testRnaComplementOfAdenineIsUracil", testRnaComplementOfAdenineIsUracil),
            ("testRnaComplement", testRnaComplement),
        ]
    }
}
