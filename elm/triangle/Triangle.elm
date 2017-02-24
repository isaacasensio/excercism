module Triangle exposing (..)

import Set
import List exposing (..)


version : Int
version =
    2


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


hasInvalidLengths : List comparable -> Bool
hasInvalidLengths sides =
    List.any (\n -> n <= 0) sides


hasViolatedInequality : List comparable -> Bool
hasViolatedInequality sides =
    (take 2 (List.sort (sides)) |> sum)
        <= (drop 2 (List.sort (sides)) |> sum)


getKind : List comparable -> Result String Triangle
getKind sides =
    case Set.size (Set.fromList sides) of
        1 ->
            Ok Equilateral

        2 ->
            Ok Isosceles

        _ ->
            Ok Scalene


triangleKind : comparable -> comparable -> comparable -> Result String Triangle
triangleKind x y z =
    if hasInvalidLengths [ x, y, z ] then
        Err "Invalid lengths"
    else if hasViolatedInequality [ x, y, z ] then
        Err "Violates inequality"
    else
        getKind [ x, y, z ]
