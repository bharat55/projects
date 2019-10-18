class Friendship < ApplicationRecord
  enum status: [:accept, :unaccept,:pending]
  belongs_to :user
  belongs_to :friend, :class_name => "User"
end
