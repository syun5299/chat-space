class User < ApplicationRecord
  has_many :groups_users
  has_many :messeges
  has_many :groups, though: groups_users
end
