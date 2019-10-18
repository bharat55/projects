class User < ApplicationRecord
  has_secure_password
  has_many :friendships, dependent: :destroy
  has_many :friend, through: :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  validates :email, presence: true,
              format:{:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i},
              uniqueness: true
end
