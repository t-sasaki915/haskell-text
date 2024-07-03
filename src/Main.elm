module Main exposing (main)

import Chapter1 exposing (chapter1)
import Chapter2 exposing (chapter2)
import Component exposing (pageTitle)

import Browser exposing (Document)
import List exposing (foldr)

main : Program () Int msg
main =
    Browser.document
        { init = \_ -> (0, Cmd.none)
        , view = view
        , update = \_ mdl -> (mdl, Cmd.none)
        , subscriptions = \_ -> Sub.none
        }

view : model -> Document msg
view _ =
    Document
        "TSasakiのHaskell入門"
        ( foldr (++) []
            [ pageTitle
            , chapter1
            , chapter2
            ]
        )
