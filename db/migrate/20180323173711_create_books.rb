class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.date :date
      t.string :publisher
      t.decimal :rating
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
