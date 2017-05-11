class Friendship < ApplicationRecord
  validates :friend_id, uniqueness: { scope: :user_id }
  #validates each friend_id and the user_id in the friendship is unique
  #this avoids adding the same user as friend multiple times
  belongs_to :user
  belongs_to :friend, :class_name => "User"
end
