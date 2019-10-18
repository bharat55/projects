class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.integer :total_gross
      t.text :description

      t.timestamps
    end
  end
end
