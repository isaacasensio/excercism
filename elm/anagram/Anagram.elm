module Anagram exposing (..)


orderedString : String -> String
orderedString word =
    String.fromList
        (List.sort (String.toList (String.toUpper word)))


isValidCandidate : String -> String -> Bool
isValidCandidate word candidate =
    haveSameLetters word candidate
        && isNotSameWord word candidate


haveSameLetters : String -> String -> Bool
haveSameLetters word candidate =
    (orderedString word)
        == (orderedString candidate)


isNotSameWord : String -> String -> Bool
isNotSameWord word candidate =
    (String.toUpper candidate /= String.toUpper word)


detect : String -> List String -> List String
detect word candidates =
    List.filter (isValidCandidate word) candidates
