class Friendship < ApplicationRecord
  validates_uniqueness_of :friend_id
  belongs_to :user
  belongs_to :friend, :class_name => "User"
end
