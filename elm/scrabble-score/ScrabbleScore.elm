module ScrabbleScore exposing (..)

import Dict


letterValues : Dict.Dict String Int
letterValues =
    Dict.fromList
        [ ( "A", 1 )
        , ( "E", 1 )
        , ( "I", 1 )
        , ( "O", 1 )
        , ( "U", 1 )
        , ( "L", 1 )
        , ( "N", 1 )
        , ( "R", 1 )
        , ( "S", 1 )
        , ( "T", 1 )
        , ( "D", 2 )
        , ( "G", 2 )
        , ( "B", 3 )
        , ( "C", 3 )
        , ( "M", 3 )
        , ( "P", 3 )
        , ( "F", 4 )
        , ( "H", 4 )
        , ( "V", 4 )
        , ( "W", 4 )
        , ( "Y", 4 )
        , ( "K", 5 )
        , ( "J", 8 )
        , ( "X", 8 )
        , ( "Q", 10 )
        , ( "Z", 10 )
        ]


points : String -> Int -> Int
points letter accumulated =
    case Dict.get letter letterValues of
        Just value ->
            accumulated + value

        Nothing ->
            accumulated


splitToLetters : String -> List String
splitToLetters word =
    String.split "" (String.toUpper word)


scoreWord : String -> Int
scoreWord word =
    (List.foldr points
        0
        (splitToLetters word)
    )
