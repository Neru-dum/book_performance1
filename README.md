# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|name|string|null: false, foreign_key:true unique:true|
|e-mail|string|null: false, foreign_key:true unique:true|
|password|string|null: false, foregin_key:false, unique: true|

### Asociation
- has_many : libraries, through: bookings
- has_many : bookings
- has_many : end_books

## libraries テーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false, foreign_key:true|
|booking_id|integer|null: false, foreign_key: true|

### Asociation
- has_many : users, through: bookings
- has_many : bookings

## bookings テーブル
|Column|Type|Options|
|------|----|-------|
|library_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :user 
- belongs_to :library


## end-book テーブル
|Column|Type|Options|
|------|----|-------|
|library_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :user















