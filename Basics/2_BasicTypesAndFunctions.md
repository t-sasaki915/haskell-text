# Haskellの基本的な型と関数

## 基本的な型
ここではほかの言語にも存在するような、極めて基本的な型を紹介する。
| 型 | 内容 | 具体例 |
| ---- | ---- | ---- |
| `Int` | 整数 | `0` `1` `2` `-3` |
| `Double` | 実数 | `0.0` `1.0` `2.2` `-0.1` |
| `Bool` | 真偽 | `True` `False` |
| `String` | 文字列 | `"aaa"` `"bbb"` `"あああ"` |
| `Char` | 文字 | `'a'` `'b'` `'c'` |
| `()` | 値なし | `()` |

`Int`に似た`Integer`や、`Double`に似た`Float`などもあるが、ほとんどの場合において同じように使えるため、ここでは省略する。

## 関数の型
Haskellの関数を定義するには、関数の型を知る必要がある。
関数の型は、`->` という記号を用いて、このような形式で記述される。
```haskell
引数の型1 -> 引数の型2 -> ... -> 戻り値の型
```
例えば、`Int`型の値を受け取って、`Int`型の値を返す関数の型は、
```haskell
Int -> Int
```
であり、`Int`型と`String`型の値を受け取って、`Bool`型の値を返す関数の型は
```haskell
Int -> String -> Bool
```
である。
また、引数を受け取らない関数、すなわち定数を定義したいときは、戻り値の型だけを書けばよい。
例えば、`Char`型の定数の型は
```haskell
Char
```
である。
### 問題
1. `Int`型、`Int`型、`Int`型の値を受け取り、`String`型の値を返す関数の型を記述せよ。
<details>
<summary>回答</summary>

```haskell
Int -> Int -> Int -> String
```
</details>

2. `String`型の値を受け取り、何も返さない (値なし) 関数の型を記述せよ。
<details>
<summary>回答</summary>

```haskell
String -> ()
```
</details>

3. `Double`型の定数の型を記述せよ。
<details>
<summary>回答</summary>

```haskell
Double
```
</details>
