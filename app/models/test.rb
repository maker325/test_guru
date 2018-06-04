class Test < ApplicationRecord
  def self.show_tests_title(category_title)
    Test.joins('JOIN categories
    ON tests.category_id = categories.id')
        .where(categories: { title: category_title })
        .order('tests.title DESC').pluck(:title)
  end
end
