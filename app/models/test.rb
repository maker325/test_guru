class Test < ApplicationRecord
  def self.show_tests_title(category)
    category_title = Category.find_by('title = ?', category)
    Test.where('category_id = ?', category_title.id).order(title: :desc).pluck(:title)
  end
end
