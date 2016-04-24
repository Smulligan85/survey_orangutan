class Survey < ActiveRecord::Base
  has_many :questions, :dependent => :destroy

  def questions_attributes=(question_attributes)
    question_attributes.values.each do |question_attribute|
      if question_attribute[:phrase].present?
        question = Question.find_or_create_by(question_attribute)
        self.questions << question
      end
    end
  end 
end
