module Main exposing (main)

import Chapter1 exposing (chapter1)
import Chapter2 exposing (chapter2)
import Chapter3 exposing (chapter3)
import Chapter4 exposing (chapter4)
import Component exposing (pageTitle)
import Core exposing (Msg(..), Model)
import Util exposing (..)

import Browser exposing (Document)
import List exposing (map)

main : Program () Model Msg
main =
    Browser.document
        { init = \_ -> (init, Cmd.none)
        , view = view
        , update = \msg mdl -> (update msg mdl, Cmd.none)
        , subscriptions = \_ -> Sub.none
        }

init : Model
init = { loadedLazyImages = [] }

update : Msg -> Model -> Model
update msg model = case msg of
    LoadLazyImage imgID ->
        { model | loadedLazyImages = model.loadedLazyImages ++ [imgID] }

view : Model -> Document Msg
view mdl =
    let components = [ pageTitle
                     , chapter1
                     , chapter2
                     , chapter3
                     , chapter4
                     ]
    in 
    Document "TSasakiのHaskell入門"
        (mdl |> compose (sequence (map sequence components)) flatten)
