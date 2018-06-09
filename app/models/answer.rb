class Answer < ApplicationRecord
  belongs_to :question
  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :validate_answers_count, on: :create

  def validate_answer_count
    error_info = 'There is more then 4 answers!'
    errors.add(:question, error_info) if question.answers.size >= 4
  end
end
