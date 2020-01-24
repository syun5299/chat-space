class Group < ApplicationRecord
  has_many :groups_users
  has_many :messages
  has_many :users, through: group_users
end
