class DropSearches < ActiveRecord::Migration[5.1]
  def change
    drop_table :search2s
  end

end
