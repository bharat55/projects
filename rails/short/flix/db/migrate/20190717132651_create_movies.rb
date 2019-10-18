class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.string :cast
      t.string :duration
      t.integer :total_gross
      t.timestamps
    end
  end
end
