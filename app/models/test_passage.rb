class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_current_question

  def accept!(answer_ids)
    self.correct_question += 1 if correct_answer?(answer_ids)
    save!
  end

  def correct_answers_percent
    correct_question.to_f * 100 / test.questions.count
  end

  def passed?
    correct_answers_percent >= 85
  end

  def question_number
    if current_question.nil?
      question_count
    else
      test.questions.index(current_question) + 1
    end
  end

  def completed?
    current_question.nil?
  end

  def questions_sum
    test.questions.size
  end

  private

  def before_validation_set_current_question
    self.current_question = if new_record?
                              test.questions.first
                            else
                              test.questions.order(:id).find_by('id > ?', current_question.id)
                            end
  end

  def correct_answer?(answer_ids)
    if answer_ids.nil?
      false
    else
      correct_answers.ids.sort == answer_ids.map(&:to_i).sort
    end
  end

  def correct_answers
    current_question.answers.correct
  end
end
