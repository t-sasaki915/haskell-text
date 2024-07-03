module Component exposing (..)

import Core exposing (Msg(..), Model)
import Util exposing (sequence)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List exposing (head, reverse, member)
import Maybe exposing (withDefault)
import String exposing (split)

type alias Component = List (Model -> Html Msg)

pageTitle : Component
pageTitle = [\_ -> h1 [] [text "TSasakiのHaskell入門"]]

txt : String -> Model -> Html Msg
txt content _ = text content

chapterTitle : String -> Model -> Html Msg
chapterTitle title _ = h2 [] [text title]

chaptSection : String -> Model -> Html Msg
chaptSection title _ = h3 [] [text title]

hyperlink : String -> String -> Model -> Html Msg
hyperlink link alt _ = a [href link] [text alt]

dotList : Component -> Model -> Html Msg
dotList comp mdl = ul [] (mdl |> sequence comp)

listItem : String -> Model -> Html Msg
listItem content _ = li [] [text content]

lazyImage : String -> String -> Model -> Html Msg
lazyImage url alt mdl =
    let fileName = withDefault url (head (reverse (split "/" url))) 
        lazyImageID = "LAZYIMAGE_" ++ fileName in
    if member lazyImageID mdl.loadedLazyImages then
        details [] [summary [] [text alt], img [src url] []]

    else
        details [onClick (LoadLazyImage lazyImageID), id lazyImageID]
            [summary[] [text alt]] 
