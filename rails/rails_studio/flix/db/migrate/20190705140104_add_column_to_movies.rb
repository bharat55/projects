class AddColumnToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :released_on, :date
  end
end
