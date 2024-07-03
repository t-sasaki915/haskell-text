module Chapter4 exposing (chapter4)

import Component exposing (..)

chapter4 : Component
chapter4 =
    [ chapterTitle "4 基本的な演算"
    , txt "この章では、Haskellで基本的な演算を記述する方法を説明する。"
    , txt "3章で開発環境を整えたところだが、この章のサンプルプログラムについては", hlink "https://www.tryhaskell.org/" "TryHaskell", txt "の使用をおすすめする。"
    , txt "TryHaskellの使用方法は非常に簡単で、", snippet "λ", txt "の隣にプログラムを入力してEnterキーを押すだけである。"

    , chaptSection "4.1 四則演算"
    , txt "加算・減算は数学とまったく同じように記述できる。"
    , txt "ただし、乗算は", snippet "×", txt "や", snippet "・", txt "ではなく、", snippet "*", txt "を使う必要がある。"
    , txt "そして、除算は", snippet "÷", txt "ではなく", snippet "/", txt "を使う。"
    , txt "つまり、Haskellで四則演算は下記のように記述できる。"
    , haskellCode
        [ "1 + 2"
        , "2 - 1"
        , "2 * 4"
        , "4 / 2"
        ]
    , txt "上の式を実行すると、結果はそれぞれ"
    , haskellCode
        [ "3"
        , "1"
        , "8"
        , "2.0"
        ]
    , txt "となる。"
    , txt "Haskellで除算を行うと、解が整数であるかどうかに関わらず結果は実数となる点に注意が必要である。"
    , txt "結果として実数が出てきたということは、Haskellでは実数を扱うことができる。"
    , haskellCode
        [ "1.0 + 2.0"
        , "2.3 - 0.3"
        , "2.1 * 4.8"
        , "4.5 / 1.5"
        ]
    , txt "これらの実行結果は以下である。"
    , haskellCode
        [ "3.0"
        , "2.0"
        , "10.08"
        , "3.0"
        ]
    , txt "また、多項式や", snippet "( )", txt "を用いた計算の優先順位の指定も可能だ。"
    , haskellCode
        [ "1 + 2 + 3"
        , "1 + 2 - 3 + 4"
        , "1 + 2 - (3 + 4)"
        ]
    , txt "これらの実行結果は以下である。"
    , haskellCode
        [ "6"
        , "4"
        , "-4"
        ]
    ]
