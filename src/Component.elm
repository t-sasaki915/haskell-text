module Component exposing (..)

import Core exposing (Msg(..), Model)
import Util exposing (sequence, compose)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List exposing (head, reverse, member, singleton)
import Maybe exposing (withDefault)
import String exposing (split, join)

type alias Component = List (Model -> Html Msg)

pageTitle : Component
pageTitle = [\_ -> h1 [] [text "TSasakiのHaskell入門"]]

txt : String -> Model -> Html Msg
txt content _ = text content

chapterTitle : String -> Model -> Html Msg
chapterTitle title _ = h2 [] [text title]

chaptSection : String -> Model -> Html Msg
chaptSection title _ = h3 [] [text title]

chaptSubsection : String -> Model -> Html Msg
chaptSubsection title _ = h4 [] [text title]

answerBox : Component -> Model -> Html Msg
answerBox comp mdl = details []
    (summary [] [text "解答を表示"] :: (mdl |> sequence comp))

problem : String -> Component -> Model -> Html Msg
problem prob comp mdl = li []
    ([text prob, br [] []] ++ (mdl |> sequence comp))

hlink : String -> String -> Model -> Html Msg
hlink link alt _ = a [href link] [text alt]

dotList : Component -> Model -> Html Msg
dotList comp mdl = ul [] (mdl |> sequence comp)

numberList : Component -> Model -> Html Msg
numberList comp mdl = ol [] (mdl |> sequence comp)

listItem : String -> Model -> Html Msg
listItem content _ = li [] [text content]

snippet : String -> Model -> Html Msg
snippet content _ = code [] [text content]

haskellCode : List String -> Model -> Html Msg
haskellCode lines _ = pre [] [code [class "language-haskell"] [text (join "\n" lines)]]

tableContainer : Component -> Model -> Html Msg
tableContainer comp mdl = table [] (mdl |> sequence comp)

tableHeader : Component -> Model -> Html Msg
tableHeader heads mdl = tr [] (List.map (compose singleton (th [])) (mdl |> sequence heads))

tableRow : Component -> Model -> Html Msg
tableRow data mdl = tr [] (List.map (compose singleton (td [])) (mdl |> sequence data))

lazyImage : String -> String -> Model -> Html Msg
lazyImage url alt mdl =
    let fileName = withDefault url (head (reverse (split "/" url))) 
        lazyImageID = "LAZYIMAGE_" ++ fileName in
    if member lazyImageID mdl.loadedLazyImages then
        details [id lazyImageID] [summary [] [text alt], img [src url] []]

    else
        details [onClick (LoadLazyImage lazyImageID), id lazyImageID]
            [summary[] [text alt]] 
