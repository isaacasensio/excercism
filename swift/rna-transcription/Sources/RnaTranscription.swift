import Foundation

class Nucleotide {

  let complementOfDNA : String

  init(dnaChain : String) {
    var mapper: [String: String] = ["C": "G", "G": "C", "T": "A", "A": "U"]

    let splittedChain = dnaChain.characters.map({ String($0) })
    
    let rnaChain : [String] = splittedChain.map {
        mapper[$0] == nil ? $0 : mapper[$0]!
    }

    complementOfDNA = rnaChain.joined()

  }

}
