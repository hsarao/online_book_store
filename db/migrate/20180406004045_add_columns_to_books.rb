class AddColumnsToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :sale, :boolean
    add_column :books, :new, :boolean
  end
end
