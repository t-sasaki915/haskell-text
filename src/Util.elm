module Util exposing (..)

import List exposing (map, foldr)

sequence : List (a -> b) -> a -> List b
sequence fs a = map ((|>) a) fs

flatten : List (List a) -> List a
flatten = foldr (++) []

compose : (a -> b) -> (b -> c) -> a -> c
compose f g a = g (f a)
