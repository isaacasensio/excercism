module Bob exposing (hey)

import String exposing (..)


isYelling : String -> Bool
isYelling sentence =
    (toUpper sentence == sentence)
        && (toLower sentence /= sentence)


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
