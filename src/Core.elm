module Core exposing (Msg(..), Model)

type Msg = LoadLazyImage String

type alias Model =
    { loadedLazyImages : List String
    }
