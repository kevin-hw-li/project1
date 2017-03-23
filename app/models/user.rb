class User < ApplicationRecord
  validates_uniqueness_of :email, :name
  has_secure_password

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :posts

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  # validates :email, format: {
  #   with: /\A.*@wdi.com\z/,
  #   message: "invalid email address"
  # }
end
