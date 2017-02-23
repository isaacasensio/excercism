module Accumulate exposing (..)


accumulate : (b -> b) -> List b -> List b
accumulate function b =
    List.map function b
