class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :tests_passages
  has_many :users, through: :tests_passages
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  def self.show_tests_title(category_title)
    Test.joins('JOIN categories
    ON tests.category_id = categories.id')
        .where(categories: { title: category_title })
        .order('tests.title DESC').pluck(:title)
  end
end
