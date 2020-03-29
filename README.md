# BOOKMEMO

## Overview
 学習本を読み終えた時に、内容を忘れないためにポイントを押さえ、アウトプットできるアプリです。
 
 http://bookmemo1.herokuapp.com/
 こちらから閲覧可能です

## Development Environment
  - Ruby '2.5.1'
  - Rails '5.2.4'
  - Mysql '5.6'

## DB Design
### User Table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|book|index|null: false, foreign_key: true|

### Association
  - has_many :books
  - has_many :comments

### Book Table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|author|string|null: false|
|point1|text|null: false|
|point2|text|
|point3|text|
|Impression|text|null :false|
|user|index|null: false, foreign_key: true|


### Association
- belongs_to :user, optional: true
- has_many :comments, dependent: :destroy


### Comment Table
|Column|Type|Options|
|------|----|-------|
|text|text|
|user|index|null: false, foreign_key: true|
|book|index|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :book

