class User < ApplicationRecord
  has_many :tests_passages
  has_many :tests, through: :tests_passages
  has_many :own_tests, class_name: 'Test', foreign_key: :author_id

  def show_tests_by_lvl(lvl)
    Test.joins('JOIN test_passages
    ON tests.id = test_passages.test_id')
        .where('test_passages.user_id = :user_id AND level = :level',
               user_id: id, level: lvl)
  end
end
