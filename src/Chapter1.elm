module Chapter1 exposing (chapter1)

import Component exposing (..)

import Html exposing (Html, text)

chapter1 : List (Html msg)
chapter1 =
    [ chapterTitle "1 はじめに"
    , text "このテキストは、", hyperlink "https://github.com/t-sasaki915" "筆者", text "のHaskellの理解度を確かめることを主な目的として作成された。"
    , text "また、筆者は専門家ではないので、このテキスト内に間違いを見つけた人や、より良い説明を思いついた人は、ぜひ", hyperlink "https://github.com/t-sasaki915/haskell-text" "GitHub", text "で提案してほしい。"
    , text "このテキストが誰かのHaskell学習に役立つようなことがあれば、大変うれしく思う。"

    , chaptSection "1.1 テキストを読むにあたって"
    , text "このテキストを読むにあたり、以下のものは必須となる。"
    , dotList
        [ listItem "Windowsパソコン (Windows 10以上。LinuxやmacOSは筆者がわからない。)"
        , listItem "PowerShellの基本操作・ソフトのインストール方法などの知識"
        , listItem "高校程度の数学知識 (微分積分などを行うわけではない。)"
        , listItem "最低限の英単語"
        ]
    , text "また、必須ではないが、以下の知識や経験がある場合は、内容理解の役に立つだろう。"
    , dotList
        [ listItem "C言語やPythonなどのプログラミング経験"
        , listItem "LispやOCamlなどの関数型プログラミング経験"
        , listItem "圏論やラムダ計算の知識"
        ]
    , text "PowerShellなどの知識は、環境構築の時のみ必要となる。"
    , text "C言語やPythonなどを経験している読者は、現在のプログラミングに対する考え方を多少変える必要がある。"
    , text "例えば、変数の再代入が必要な処理は、書き直しが必要である。"
    ]

