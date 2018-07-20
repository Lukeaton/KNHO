class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :genre
      t.text :image
      t.integer :rating
      t.text :review
      t.text :title
      t.text :plot
      t.integer :director_id

      t.timestamps
    end
  end
end
