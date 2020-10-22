# README

# アプリ名 Shoes-Box  
https://gyazo.com/ce6c47cdacefdcea26f2225e0dbf906b

# 開発環境
・haml  
・scss  
・Ruby  
・VSCode（Visual Studio Code）

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
