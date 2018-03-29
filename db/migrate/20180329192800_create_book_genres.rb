class CreateBookGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :book_genres do |t|
      t.references :Book, foreign_key: true
      t.references :Genre, foreign_key: true

      t.timestamps
    end
  end
end
