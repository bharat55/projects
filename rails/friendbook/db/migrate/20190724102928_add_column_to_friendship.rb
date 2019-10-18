class AddColumnToFriendship < ActiveRecord::Migration[5.2]
  def change
    add_column :friendships, :status, :integer, :default => 2
  end
end
