class CreateTestPassages < ActiveRecord::Migration[5.2]
  def change
    create_table :test_passages do |t|
      t.references :user, foreign_key: true, index: false
      t.references :test, foreign_key: true, index: false

      t.index %i[test_id user_id], unique: true

      t.timestamps
    end
  end
end
