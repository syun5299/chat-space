DB設計
## usersテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|email|string|null: false, unique: true|

### Association
- has_many :groups_users
- has_many :messeges
- has_many :groups, through: :groups_users

## messagesテーブル
|Column|Type|Option|
|------|----|------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
|imege|string|-----|
|body|text|-----|

### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル
|Column|Type|Option|
|------|----|------|
|group|string|null: false, unique: true|

### Association
- has_many :groups_users
- has_many :messages
- has_many :users, through: :group_users

### groups_usersテーブル
|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

