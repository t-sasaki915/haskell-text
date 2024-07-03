module Chapter3 exposing (chapter3)

import Component exposing (..)

chapter3 : Component
chapter3 =
    [ chapterTitle "3 環境構築"
    , txt "この章では、Windows 10以上を搭載したパソコンと、Visual Studio Codeを用いた環境構築方法を説明する。"

    , chaptSection "3.1 Visual Studio Codeのインストール"
    , hlink "https://code.visualstudio.com/" "Microsoftのサイト", txt "からインストーラを入手し、インストールしよう。"
    , txt "特に注意すべき点はないが、", snippet "エクスプローラーのファイルコンテキストメニューに[Codeで開く]アクションを追加する", txt "にチェックを入れておくと便利である。"
    , txt "インストール後にVisual Studio Codeが起動した場合は、一度閉じる必要がある。"

    , chaptSection "3.2 GHCupのインストール"
    , txt "次に、Haskellコンパイラをはじめ様々なツールをインストールしてくれる、GHCupをインストールする。"
    , txt "まず、", hlink "https://www.haskell.org/ghcup/" "GHCupのサイト", txt "にアクセスしよう。"
    , txt "次に、", snippet "Set-ExecutionPolicy", txt "から始まるコマンドの右隣にあるコピーボタン(参考画像1)をクリックしよう。"
    , lazyImage "./assets/ghcup_copy_button.png" "参考画像1を表示"
    , txt "次に、管理者権限ではないPowerShellを開き、コピーしたコマンドを実行しよう。"
    , txt "コマンドプロンプトでは実行不可能である。"
    , txt "実行すると、GHCupインストーラからいくつかの質問が来るはずだ。"
    , txt "下の表に、筆者がおすすめする回答を記す。"
    , tableContainer
        [ tableHeader [txt "質問", txt "回答"]
        , tableRow [snippet "Press enter to accept the default [C:\\]:", txt "(何も入力せずEnter)"]
        , tableRow [snippet "Press enter to accept the default [C:\\\\cabal]:", txt "(何も入力せずEnter)"]
        , tableRow [snippet "Do you want to install the haskell-language-server (HLS)for development purposes as well?", snippet "Y"]
        , tableRow [snippet "Do you want to install stack as well?", snippet "Y"]
        , tableRow [snippet "Do you want to create convenience desktop shortcuts (e.g. for uninstallation and msys2 shell)?", snippet "N"]
        , tableRow [snippet "Do you want GHCup to install a default MSys2 toolchain (recommended)?", snippet "Y"]
        ]
    , txt "これらの質問に答えた後、しばらく待つと", snippet "MinGW x64", txt "というタイトルのウインドウが現れるはずである。"
    , txt "しばらく待ち、", snippet "MinGW x64", txt "のウインドウに緑の文と、白文字で", snippet "Press any key to exit", txt "と表示されれば(参考画像2)、GHCupのインストールは成功である。"
    , txt "何かキーを押して終了しよう。"
    , lazyImage "./assets/ghcup_finish.png" "参考画像2を表示"

    , chaptSection "3.3 拡張機能のインストール"
    , txt "次に、快適な開発環境のために、Visual Studio Codeに拡張機能をインストールする。"
    , txt "まずはVisual Studio Codeを起動し、画面左にある4つの四角形で構成されたアイコン(参考画像3)をクリックしよう。"
    , lazyImage "./assets/extensions_icon.png" "参考画像3を表示"
    , txt "そして、", snippet "EXTENSIONS: MARKETPLACE", txt "の下にある検索欄に", snippet "haskell", txt "と入力する。"
    , txt "一番上に表示される", snippet "Haskell", txt "という項目の、", snippet "Install", txt "ボタン(参考画像4)をクリックして、少し待てば拡張機能のインストールは完了だ。"
    , txt "インストールが完了すると、", snippet "Install", txt "ボタンは消えるはずである。"
    , lazyImage "./assets/instal_haskell_extension.png" "参考画像4を表示"

    , chaptSection "3.4 Visual Studio Codeの設定"
    , txt "次に、Visual Studio Codeの設定を行う。"
    , txt "Visual Studio Codeの画面左下にある歯車アイコンをクリックし、", snippet "Settings", txt "を選択(参考画像5)しよう。"
    , lazyImage "./assets/select_settings.png" "参考画像5を表示"
    , txt "そして、", snippet "Search settings", txt "と書かれた検索欄で", snippet "manage hls", txt "を検索し、", snippet "Haskell: Manage HLS", txt "という項目が出てくることを確認しよう。"
    , txt "最後に、", snippet "PATH", txt "と書かれた場所をクリックし、", snippet "GHCup", txt "を選択(参考画像6)すれば、Visual Studio Codeの設定は完了である。"
    , lazyImage "./assets/select_ghcup.png" "参考画像6を表示"
    , txt "ここで、Visual Studio Codeのメニューから", snippet "File", txt "→", snippet "Auto Save", txt "を選択して、オートセーブを有効にしておくと便利である。"

    , chaptSection "3.5 サンプルプログラムの実行"
    , txt "最後に、サンプルプログラムを実行してみよう。"
    , txt "拡張子が", snippet ".hs", txt "であるファイルを作成し、それをVisual Studio Codeで開く。"
    , txt "開いた際に、Visual Studio Codeからhlsのアップデートを促すメッセージ(参考画像7)が表示されるかもしれない。"
    , txt "表示された場合は、", snippet "Yes", txt "を押して続行する。"
    , lazyImage "./assets/hls_update.png" "参考画像7を表示"
    , haskellCode
        [ "main :: IO ()"
        , "main = putStrLn \"Hello World.\""
        ]
    , txt "サンプルプログラムの入力が完了したら、Visual Studio Codeのメニューから", snippet "Terminal", txt "→", snippet "New Terminal", txt "を選択し、ターミナルを起動しよう。"
    , txt "画面下部に表示されたPowerShellで、先ほど作成した", snippet ".hs", txt "ファイルのところまで移動し、", snippet "stack runhaskell ファイル名.hs", txt "を実行しよう。"
    , txt "最後に", snippet "Hello World.", txt "と表示されれば、サンプルプログラムの実行は成功である。"
    , txt "初回は時間がかかり、たくさんのログが出力されるが、2回目以降は比較的高速になり、", snippet "Hello World.", txt "のみが表示されるようになるはずだ。"
    ]
