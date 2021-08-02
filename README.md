## usersテーブル

| Column     | Type       | Options        |
| ---------- | ---------- | ---------------|
| email      | string     | null: false    |
| password   | string     | null: false    |
| name       | string     | null: false    |
| profile    | text       | null: false    |
| occupation | text       | null: false    |
| position   | text       | null: false    |

### Association
- has_many :prototypes
- has_many :comments

## prototypesテーブル

| Column     | Type          | Options        |
| ---------- | ------------- | ---------------|
| title      | string        | null: false    |
| catch_copy | text          | null: false    |
| concept    | text          | null: false    |
| image      | ActiveStorage | null: false    |
| user       | references    |                |
### Association
- belongs_to :users
- has_many :comments

## commentsテーブル

| Column    | Type       | Options        |
| --------- | ---------- | -------------- |
| concept   | text       |   null: false  |
| image     | references |                |
| user      | references |                |
### Association
- belongs_to :users
- belongs_to :prototypes