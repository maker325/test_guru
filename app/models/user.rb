class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :own_tests, class_name: 'Test', foreign_key: :author_id

  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email, with: /@/

  has_secure_password

  def show_tests_by_lvl(lvl)
    tests.with_level(lvl)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end
