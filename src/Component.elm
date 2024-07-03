module Component exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

pageTitle : List (Html msg)
pageTitle = [h1 [] [text "TSasakiのHaskell入門"]]

chapterTitle : String -> Html msg
chapterTitle title = h2 [] [text title]

chaptSection : String -> Html msg
chaptSection title = h3 [] [text title]

hyperlink : String -> String -> Html msg
hyperlink link txt = a [href link] [text txt]

dotList : List (Html msg) -> Html msg
dotList = ul []

listItem : String -> Html msg
listItem content = li [] [text content]
