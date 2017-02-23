module Leap exposing (..)


isLeapYear : Int -> Bool
isLeapYear year =
    if year % 4 == 0 && year % 100 /= 0 then
        True
    else
        year % 400 == 0
