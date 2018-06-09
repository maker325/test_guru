class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :own_tests, class_name: 'Test', foreign_key: :author_id

  validates :email, presence: true, uniqueness: true

  def show_tests_by_lvl(lvl)
    tests.with_level(lvl)
  end
end
