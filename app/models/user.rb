class User < ApplicationRecord
  def show_tests_by_lvl(lvl)
    Test.where('level = ?', lvl)
  end
end
