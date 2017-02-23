module Bob exposing (hey)

import String exposing (..)
import Regex exposing (..)


isYelling : String -> Bool
isYelling sentence =
    toUpper sentence
        == sentence
        && containsCapitalLetters sentence


containsCapitalLetters : String -> Bool
containsCapitalLetters sentence =
    Regex.contains (regex "[A-Z]") sentence


isQuestion : String -> Bool
isQuestion asking =
    String.endsWith "?" asking


isBlank : String -> Bool
isBlank asking =
    trim asking
        |> isEmpty


hey : String -> String
hey asking =
    if isBlank asking then
        "Fine. Be that way!"
    else if isYelling asking then
        "Whoa, chill out!"
    else if isQuestion asking then
        "Sure."
    else
        "Whatever."
