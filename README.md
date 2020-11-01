# README

# アプリ名 Shoes-Box  
<img width="1440" alt="スクリーンショット 2020-11-01 16 25 42" src="https://user-images.githubusercontent.com/65848769/97797324-75dfbc80-1c5f-11eb-881a-ba67ebb61da3.png">


# 開発環境
・haml  
・scss  
・Ruby  
・VSCode（Visual Studio Code）

# アプリ機能
### 1,記事の投稿

### 2,記事の詳細表示

### 3,いいね機能

### 4,ランキング機能
いいねの数によって、上位3つの投稿が表示されます。

# shoes-box DB設計

## usersテーブル
|Column|type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :likes
- has_many :posts, through: :likes

## postsテーブル
|Column|type|Options|
|------|----|-------|
|content|text||
|image|text||
|user_id|integer|null :false, foreign_key: true|
### Association
- has_many :likes
- has_many :users, through: :likes

## likesテーブル
|Column|type|Options|
|------|----|-------|
|user-id|integer|null: false, foreign_key: true|
|post-id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post
