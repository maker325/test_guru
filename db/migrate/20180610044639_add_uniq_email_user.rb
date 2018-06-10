class AddUniqEmailUser < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
    change_column_null :users, :email, false
  end
end
