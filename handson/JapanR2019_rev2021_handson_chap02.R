### Japan.R 2019 初心者セッション 「今日からはじめるR」
### 2021年改訂版 ハンズオン
### 第2章　Rの概要
### Author: タナカケンタ (https://mana.bi/)
### コンテンツやハンズオンの使用方法については、
### https://mana.bi/jr1921 を参照してください。

# -------------------------------------------------------------------------------------
# 2.3.8　ハンズオン: ファイルを開いてプログラムを実行してみよう
# 以下のプログラムにカーソルを合わせ、Ctrl + Enterキーを押して実行してみてください。

a <- rnorm(1000) # 1000個の正規分布に従う乱数を生成
hist(a) # データの分布をヒストグラムで描画

# -------------------------------------------------------------------------------------
# 2.4　Rの基本ルール

a <- 1 # オブジェクトaに1を代入

a # aの中身を参照

a <- 3 # オブジェクトaに3を代入

sqrt(a) # aの平方根を算出する

# -------------------------------------------------------------------------------------
# 2.5　Rのデータ構造

# -------------------------------------------------------------------------------------
## 2.5.1　ベクトル

a <- c(7, 8, 9, 0) # ベクトルを作成
a # ベクトル全体を参照

a[2] # ベクトルの2番目の要素を参照

a[2:4] # ベクトルの2番目から4番目の要素を参照

# -------------------------------------------------------------------------------------
## 2.5.2　行列

a <- 1:9 # ベクトルを連番で作成
b <- matrix(a, nrow = 3) # 行列を作成
b # nrowオプションを指定すると、値はまず列方向 (縦) に並べられる

b[1, ] # 行列の1行目を参照

b[, 1] # 行列の1列目を参照

b <- matrix(a, nrow= 3, byrow = TRUE) # 行列を作成
b # byrowオプションをTRUEにすると、値はまず行方向 (横) に並べられる

# -------------------------------------------------------------------------------------
## 2.5.3　データフレーム

# "東京都_新型コロナウイルス感染症陽性者数（区市町村別）" オープンデータを読み込む
a <- read.csv("data/130001_tokyo_covid19_positive_cases_by_municipality.csv", fileEncoding = "UTF-8")
head(a) # データの先頭6行を出力

a[20, ] # データフレームの20行目を出力

a[["陽性者数"]] # "陽性者数" 列を出力

# URLを指定してWebからデータを読み込むこともできる
b <- read.csv("https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_positive_cases_by_municipality.csv", fileEncoding = "UTF-8")
head(b)

# -------------------------------------------------------------------------------------
# 2.6　さまざまな関数

date() # 引数のいらない関数を実行

sqrt(9) # 引数が必要な関数を実行

a <- 1:100
head(a, n = 10) # オプションを指定できる関数を実行

# -------------------------------------------------------------------------------------
# 2.7　ヘルプの参照

help(read.csv)
