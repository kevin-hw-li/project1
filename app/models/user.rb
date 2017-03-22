class User < ApplicationRecord
  validates_uniqueness_of :email, :name
  has_secure_password
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :posts
end
