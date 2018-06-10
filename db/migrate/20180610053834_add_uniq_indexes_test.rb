class AddUniqIndexesTest < ActiveRecord::Migration[5.2]
  def change
    add_index :tests, %i[level title], unique: true
  end
end
