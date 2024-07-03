module Chapter4 exposing (chapter4)

import Component exposing (..)

chapter4 : Component
chapter4 =
    [ chapterTitle "4 基本的な演算"
    , txt "この章では、Haskellで基本的な演算を記述する方法を説明する。"
    , txt "3章で開発環境を整えたところだが、この章のサンプルプログラムについては", hlink "https://www.tryhaskell.org/" "TryHaskell", txt "の使用をおすすめする。"
    , txt "TryHaskellの使用方法は非常に簡単で、", snippet "λ", txt "の隣にプログラムを入力してEnterキーを押すだけである。"
    ]
