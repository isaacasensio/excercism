module Pangram exposing (..)

import String exposing (..)
import Regex exposing (..)
import Set exposing (..)


isPangram : String -> Bool
isPangram candidate =
    let
        uniqueLetters =
            toLower candidate
                |> Regex.replace All (regex "[^A-Za-z]") (\_ -> "")
                |> String.split ""
                |> Set.fromList
                |> Set.size
    in
        uniqueLetters
            == 26
