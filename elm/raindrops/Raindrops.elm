module Raindrops exposing (..)

import List exposing (..)


isFactor : ( Int, Int ) -> Maybe Int
isFactor ( number, factor ) =
    if number % factor == 0 then
        Just factor
    else
        Nothing


isNumber : String -> Maybe String
isNumber string =
    case String.toInt string of
        Err _ ->
            Just string

        Ok _ ->
            Nothing


translate : Int -> String
translate factor =
    case factor of
        3 ->
            "Pling"

        5 ->
            "Plang"

        7 ->
            "Plong"

        _ ->
            ""


addNumberIfBlank : Int -> String -> String
addNumberIfBlank number words =
    if String.length words == 0 then
        toString number ++ words
    else
        words


raindrops : Int -> String
raindrops number =
    range 1 number
        |> map2 (,) (repeat number number)
        |> filterMap isFactor
        |> map translate
        |> String.concat
        |> addNumberIfBlank number
