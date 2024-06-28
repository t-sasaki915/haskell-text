# Haskellの関数

## 関数の定義
関数の型を知ったところで、実際に関数を定義してみよう。
Haskellでは、関数は下記の形式で定義される。
```haskell
関数名 :: 関数の型
関数名 引数1 引数2 引数3 ... 引数n = 式
```
例えば、受け取った二つの`Int`型の値を足し算する関数、`add`は
```haskell
add :: Int -> Int -> Int
add a b = a + b
```
このように定義することができる。
関数名のフォーマットは特に指定されていないが、Haskellでは通常、camelCaseを用いる。
つまり、`function_name`や`FunctionName`ではなく、`functionName`のような形式で命名することが多い。
`引数1`や`引数2` は、受け取った引数にラベルを付けている。
関数`add`の例では、受け取った2つの`Int`型の値に、それぞれ`a`、`b`というラベルを付けている。
引数を受け取らない、つまり、定数を定義したい場合は、引数のラベルを書く必要はない。
`a + b`の部分が式であり、関数の実際の処理である。

### 問題
1. 2つの`Double`型の値を受け取り、引き算を行う関数`subtract`を定義せよ。戻り値の型は`Double`である。
<details>
<summary>回答例</summary>

```haskell
subtract :: Double -> Double -> Double
subtract a b = a - b
```
</details>

2. 問題1の`subtract`関数を、引数のラベルをそれぞれ`p`、`q`に変更して再定義せよ。
<details>
<summary>回答</summary>

```haskell
subtract :: Double -> Double -> Double
subtract p q = p - q
```
</details>

3. 3つの`String`型の値を受け取り、それらを連結する関数`concat`を定義せよ。ただし、`String`の連結には`++`を用い、戻り値の型は`String`である。
<details>
<summary>回答例</summary>

```haskell
concat :: String -> String -> String -> String
concat a b c = a ++ b ++ c
```
</details>

4. 1つの`Bool`型の値を受け取り、それをそのまま返す関数`identity`を、戻り値の型を推測して定義せよ。
<details>
<summary>回答例</summary>

```haskell
identity :: Bool -> Bool
identity a = a
```
</details>

5. 円周率を表す定数`pi`を定義せよ。ただし、円周率には`3.14`を用い、その型は`Double`である。
<details>
<summary>回答</summary>

```haskell
pi :: Double
pi = 3.14
```
</details>


## 関数の使用
他の多くのプログラミング言語と異なり、Haskellでは関数への値適用に`(` `)`や`,`は必要ない。
つまり、他言語における`f(1, 2)`は、Haskellでは
```haskell
f 1 2
```
である。
ただし、式の値を引数として関数に適用したい場合は、`(` `)`で囲む必要がある。
例えば、
```haskell
f (1 + 1) (f 1 2)
```
これは関数`f`に`(1 + 1)`の値と、`(f 1 2)`の値の2つを適用していることを意味する。

### 問題
1. 関数`f`に、値`"aaa"`、`True`、`1.0`を順番に適用せよ。
<details>
<summary>回答</summary>

```haskell
f "aaa" True 1.0
```
</details>

2. 関数`f`に、`a + b`と`c + d`の計算結果を適用せよ。
<details>
<summary>回答</summary>

```haskell
f (a + b) (c + d)
```
</details>

3. 関数`f`に、「関数`g`に`1`を適用した結果」と「関数`h`に`"aaa"`を適用した結果」を適用せよ。
<details>
<summary>回答</summary>

```haskell
f (g 1) (h "aaa")
```
</details>

4. 2つの`Int`型の値を受け取り、それらを`add`関数に適用し、その結果に`1`を加える関数`add'`を定義せよ。戻り値の型は`Int`である。
<details>
<summary>回答例</summary>

```haskell
add' :: Int -> Int -> Int
add' a b = (add a b) + 1
```
</details>

## 関数は値
Haskellでは、ラムダ式を用いて、関数を定義することができる。
例えば、先ほどから登場している`add`関数を、ラムダ式を用いて定義すると、
```haskell
add :: Int -> Int -> Int
add = \a b -> a + b
```
このようになる。
引数のラベルがないことから、`add`が定数として定義されたことがわかるだろうか。
そして、この`add`関数は、今までのものとまったく同じように使用できる。
したがって、関数は定数であるといえる。
関数の「値」は引数によって変わる、よって、定数ではないかもしれないが、関数「そのもの」は変化しない。
つまり、関数自体は定数である。
関数が定数であるということは、関数は値として扱えることを意味する。
つまり、`1`や`"aaa"`のような自明に値であるものと同じように、`add`や`+`といった関数を扱うことができる。
すなわち、関数の引数として`add`を指定したり、関数の戻り値として`+`を返すことができるのである。
この考え方は、Haskellでプログラミングを行う上で重要になるだろう。
