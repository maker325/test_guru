class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_passages
  has_many :users, through: :test_passages
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  scope :easy,   -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard,   -> { where(level: 5..Float::INFINITY) }
  scope :with_level, ->(level) { where(level: level) }

  scope :by_category, ->(category) { joins(:category).where(categories: { title: category }).order(title: :desc) }

  validates :title, presence: true,
                    uniqueness: { scope: :level, message: 'This test already existing!' }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.show_tests_title(category_title)
    by_category(category_title).pluck(:title)
  end
end
