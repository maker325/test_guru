class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_index :answers, :question_id
    add_foreign_key :answers, :questions
    add_index :answers, :user_id
    add_foreign_key :answers, :users

    add_index :questions, :test_id
    add_foreign_key :questions, :tests

    add_index :tests, :category_id
    add_foreign_key :tests, :categories
  end
end
